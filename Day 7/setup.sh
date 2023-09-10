#!/bin/bash

# AWS EC2 instance details
INSTANCE_ID="i-1234567890abcdef0"  # Replace with your EC2 instance ID
SSH_KEY="your-ssh-key.pem"         # Replace with your SSH key file

# Application details
APP_NAME="my-web-app"
APP_PORT=80

# Deployment directory
DEPLOY_DIR="/var/www/$APP_NAME"

# Function to deploy the application
deploy_application() {
  echo "Deploying $APP_NAME..."

  # Connect to the EC2 instance using SSH
  ssh -i "$SSH_KEY" ec2-user@$(aws ec2 describe-instances --instance-ids "$INSTANCE_ID" --query "Reservations[0].Instances[0].PublicIpAddress" --output text) <<EOF
    # Create a backup of the current deployment
    mv $DEPLOY_DIR $DEPLOY_DIR.backup

    # Create a new deployment directory
    mkdir -p $DEPLOY_DIR

    # Copy your application files to the new deployment directory
    # Example: scp -i /path/to/your-key.pem -r /path/to/your-app/* ec2-user@your-ec2-instance:/var/www/your-app/
    scp -i $SSH_KEY -r /path/to/your-app/* ec2-user@$(aws ec2 describe-instances --instance-ids "$INSTANCE_ID" --query "Reservations[0].Instances[0].PublicIpAddress" --output text):$DEPLOY_DIR

    # Restart the application server
    # Example: sudo systemctl restart your-app
    sudo systemctl restart $APP_NAME
EOF

  echo "$APP_NAME deployed successfully!"
}

# Main script execution

deploy_application

# Make sure to replace the placeholders (e.g., INSTANCE_ID, SSH_KEY, APP_NAME, DEPLOY_DIR, etc.) with your actual AWS EC2 instance details, SSH key, and application details.