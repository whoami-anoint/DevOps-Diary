#!/bin/bash

# AWS EC2 instance details
INSTANCE_IP="your-ec2-instance-ip"
SSH_KEY="your-ssh-key.pem"  # Replace with your SSH key file path

# Local path to your application files
LOCAL_APP_DIR="/path/to/your/application"

# Remote directory on the EC2 instance where the application will be deployed
REMOTE_APP_DIR="/var/www/your-app"

# Function to deploy the application
deploy_application() {
  echo "Deploying your application to $INSTANCE_IP..."

  # Copy your application files to the EC2 instance
  scp -i "$SSH_KEY" -r "$LOCAL_APP_DIR" ec2-user@"$INSTANCE_IP":"$REMOTE_APP_DIR"

  # SSH into the EC2 instance and restart your application server
  ssh -i "$SSH_KEY" ec2-user@"$INSTANCE_IP" "sudo systemctl restart your-app"
  
  echo "Deployment completed successfully!"
}

# Main script execution
deploy_application

# Make sure to replace the placeholders (e.g., INSTANCE_IP, SSH_KEY, LOCAL_APP_DIR, REMOTE_APP_DIR, your-app, etc.) with your actual AWS EC2 instance details, SSH key file path, local path to your application files, and remote directory where your application should be deployed.