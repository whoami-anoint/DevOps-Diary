# DevOps Diary - Day 12 | Deploy and Expose Your First App to AWS

## Introduction

Welcome to Day 12 of our DevOps Diary! Today, we'll take a hands-on approach to deploy your Django project from GitHub to AWS (Amazon Web Services). By the end of this day, you'll have your app up and running on an AWS instance.

## Prerequisites

Before we begin, make sure you have the following prerequisites in place:

- An AWS account with access to AWS services.
- Your Django project hosted on GitHub.

## Deployment Steps

Let's break down the deployment process into actionable steps:

### Step 1: Create an AWS EC2 Instance

1. Log in to your AWS Management Console.

2. Navigate to the EC2 service and launch a new EC2 instance. Choose an Amazon Machine Image (AMI) based on your project requirements. A Linux-based AMI is a common choice.

3. Configure the instance details, including instance type, network settings, and storage.

4. Create or select a key pair for SSH access to your instance.

5. Review and launch the instance.

### Step 2: Connect to Your EC2 Instance

1. Use the key pair you created in the previous step to SSH into your EC2 instance:

   ```shell
   ssh -i /path/to/your/keypair.pem ec2-user@your-instance-ip
   ```

### Step 3: Install Dependencies

1. Update the package manager and install the required dependencies for your Django project. This may include Python, virtualenv, and database drivers.

2. Clone your Django project from GitHub to the EC2 instance:

   ```shell
   git clone https://github.com/your-username/your-django-project.git
   ```

3. Create a virtual environment and install project dependencies:

   ```shell
   cd your-django-project
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

### Step 4: Configure Your Django Project

1. Update your Django project settings to configure the database, static files, and other project-specific settings to work in the AWS environment.

2. Create a production-ready database, if needed, and apply migrations.

### Step 5: Set Up Gunicorn and Nginx

1. Install and configure Gunicorn as your application server. Create a Gunicorn service to run your Django app.

2. Install and configure Nginx as a reverse proxy to route HTTP requests to your Gunicorn server.

### Step 6: Secure Your Instance

1. Secure your EC2 instance by updating the firewall rules (Security Group) to allow only necessary incoming traffic (e.g., HTTP, HTTPS, SSH).

2. Set up SSL/TLS certificates using AWS Certificate Manager or Let's Encrypt for secure HTTPS access.

### Step 7: Expose Your App to the Internet

1. Ensure your domain name is correctly configured to point to your AWS instance's public IP address.

2. Update the Nginx configuration to serve your Django app on your domain.

### Step 8: Deploy and Test

1. Restart Nginx and Gunicorn services to apply changes:

   ```shell
   sudo systemctl restart nginx
   sudo systemctl restart gunicorn
   ```

2. Access your Django app in a web browser using your domain name.

### Step 9: Monitor and Maintain

1. Implement monitoring and logging solutions (e.g., AWS CloudWatch) to keep an eye on your app's health and performance.

2. Regularly update and maintain your AWS resources, Django project, and dependencies.

## Conclusion

Congratulations! You've successfully deployed your Django project to AWS and exposed it to the internet. This marks the end of Day 12 of our DevOps Diary. Remember to regularly update and maintain your AWS resources and Django app to ensure they run smoothly.

Stay tuned for more DevOps adventures in the coming days!

(![image](https://github.com/whoami-anoint/DevOps-Diary/assets/72187543/aa4bc840-02a9-4618-9900-25f883ad085c)

