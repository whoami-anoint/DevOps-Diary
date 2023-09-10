#!/bin/bash

# AWS Auto Scaling Group name
ASG_NAME="your-auto-scaling-group-name"

# Minimum number of instances
MIN_INSTANCES=2

# Maximum number of instances
MAX_INSTANCES=5

# Target CPU utilization threshold (e.g., 70%)
CPU_THRESHOLD=70

# AWS region
AWS_REGION="us-east-1"

# Function to set the desired capacity of the Auto Scaling Group
set_desired_capacity() {
  local desired_capacity="$1"
  aws autoscaling set-desired-capacity --auto-scaling-group-name "$ASG_NAME" --desired-capacity "$desired_capacity" --region "$AWS_REGION"
}

# Function to check CPU utilization
check_cpu_utilization() {
  local cpu_utilization=$(aws cloudwatch get-metric-statistics \
    --namespace "AWS/EC2" \
    --metric-name "CPUUtilization" \
    --dimensions "Name=AutoScalingGroupName,Value=$ASG_NAME" \
    --statistics "Average" \
    --start-time "$(date -u +"%Y-%m-%dT%H:%M:%SZ" --date '-5 minutes')" \
    --end-time "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" \
    --period 300 --region "$AWS_REGION" | jq -r '.Datapoints[0].Average')

  if (( $(echo "$cpu_utilization > $CPU_THRESHOLD" | bc -l) )); then
    echo "CPU utilization is above the threshold ($CPU_THRESHOLD%). Scaling out..."
    set_desired_capacity "$MAX_INSTANCES"
  else
    echo "CPU utilization is within acceptable range. Scaling in..."
    set_desired_capacity "$MIN_INSTANCES"
  fi
}

# Main script execution
check_cpu_utilization

# Make sure to replace the placeholders (e.g., ASG_NAME, MIN_INSTANCES, MAX_INSTANCES, CPU_THRESHOLD, AWS_REGION, etc.) with your actual AWS Auto Scaling Group name, desired minimum and maximum instances, CPU utilization threshold, and AWS region.