#!/bin/bash

# AWS Auto Scaling Group name
ASG_NAME="your-auto-scaling-group-name"

# AWS region
AWS_REGION="us-east-1"

# CloudWatch alarm name
ALARM_NAME="CPUUtilizationAlarm"

# CPU utilization threshold (e.g., 70%)
CPU_THRESHOLD=70

# Function to create a CloudWatch alarm for CPU utilization
create_cloudwatch_alarm() {
  aws cloudwatch put-metric-alarm \
    --alarm-name "$ALARM_NAME" \
    --alarm-description "CPU Utilization Alarm for $ASG_NAME" \
    --actions-enabled \
    --alarm-actions "arn:aws:sns:us-east-1:123456789012:YourSNSTopic" \
    --metric-name "CPUUtilization" \
    --namespace "AWS/EC2" \
    --statistic "Average" \
    --dimensions "Name=AutoScalingGroupName,Value=$ASG_NAME" \
    --period 300 \
    --evaluation-periods 1 \
    --threshold "$CPU_THRESHOLD" \
    --comparison-operator "GreaterThanOrEqualToThreshold" \
    --alarm-actions "arn:aws:automate:us-east-1:ec2:stop" \
    --region "$AWS_REGION"
}

# Function to create CloudWatch Logs for instances in the Auto Scaling Group
create_cloudwatch_logs() {
  aws logs create-log-group --log-group-name "$ASG_NAME" --region "$AWS_REGION"
  aws logs put-retention-policy --log-group-name "$ASG_NAME" --retention-in-days 7 --region "$AWS_REGION"
  aws logs associate-kms-key --log-group-name "$ASG_NAME" --kms-key-id "your-kms-key-id" --region "$AWS_REGION"
}

# Main script execution

# Create a CloudWatch alarm for CPU utilization
create_cloudwatch_alarm

# Create CloudWatch Logs for instances in the Auto Scaling Group
create_cloudwatch_logs

echo "Monitoring and logging setup completed."

# Make sure to replace the placeholders (e.g., ASG_NAME, AWS_REGION, ALARM_NAME, CPU_THRESHOLD, YourSNSTopic, your-kms-key-id, etc.) with your actual AWS Auto Scaling Group name, region, CloudWatch alarm details, SNS topic, and KMS key.