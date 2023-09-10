# Day 7: Live AWS Project using SHELL SCRIPTING for DevOps

## AWS DevOps Project - #DevOps Diary

In Day 7 of our DevOps course, we will dive into a hands-on AWS DevOps project that involves using Shell Scripting to automate tasks and streamline processes in an AWS environment.\
This project will provide you with practical experience and demonstrate how DevOps principles and tools can be applied to real-world scenarios.

### Project Objectives

- Create and configure AWS resources using Shell Scripting.
- Automate deployment and scaling of AWS instances.
- Implement monitoring and logging for your AWS infrastructure.
- Demonstrate the power of automation in maintaining a DevOps environment.
- Gain hands-on experience with AWS services and Shell Scripting.

### Prerequisites

Before starting this project, make sure you have the following prerequisites in place:

- An AWS account (if you don't have one, you can sign up for a free tier account).
- Basic knowledge of AWS services.
- Familiarity with Shell Scripting (if not, consider reviewing Day 6's content).

### Project Steps

#### 1. Project Setup

- **Script Name**: [setup.sh](/Day%207/setup.sh)
- **Objective**: This script sets up the initial AWS environment, including creating VPCs, subnets, security groups, and IAM roles.
- **Documentation**:
  - Create a new VPC named "DevOpsVPC."
  - Configure two public and two private subnets.
  - Create security groups for your instances.
  - Define IAM roles for EC2 instances.

- **Guide**
  - Make sure to replace the placeholders (e.g., INSTANCE_ID, SSH_KEY, APP_NAME, DEPLOY_DIR, etc.) with your actual AWS EC2 instance details, SSH key, and application details.
- **Usage**:
  ```bash
  ./setup.sh
  ```

#### 2. Deployment Automation

- **Script Name**: [deploy.sh](/Day%207/deploy.sh)
- **Objective**: Automate the deployment of your application or service on AWS instances.
- **Documentation**:
  - Launch EC2 instances with predefined AMIs.
  - Deploy your application using Shell Scripts.

- **Guide**
  - Make sure to replace the placeholders (e.g., INSTANCE_IP, SSH_KEY, LOCAL_APP_DIR, REMOTE_APP_DIR, your-app, etc.) with your actual AWS EC2 instance details, SSH key file path, local path to your application files, and remote directory where your application should be deployed.

- **Usage**:
  ```bash
  ./deploy.sh
  ```

#### 3. Scaling

- **Script Name**: [scaling.sh](/Day%207/scaling.sh)
- **Objective**: Implement auto-scaling policies to dynamically adjust resources based on demand.
- **Documentation**:
  - Set up Auto Scaling Groups.
  - Define scaling policies based on CPU utilization.

- **Guide**
  - Make sure to replace the placeholders (e.g., ASG_NAME, MIN_INSTANCES, MAX_INSTANCES, CPU_THRESHOLD, AWS_REGION, etc.) with your actual AWS Auto Scaling Group name, desired minimum and maximum instances, CPU utilization threshold, and AWS region.

- **Usage**:
  ```bash
  ./scaling.sh
  ```

#### 4. Monitoring and Logging

- **Script Name**: [monitoring.sh](/Day%207/monitoring.sh)
- **Objective**: Set up monitoring and logging solutions to track the health and performance of your AWS infrastructure.
- **Documentation**:
  - Configure CloudWatch alarms for critical metrics.
  - Implement centralized logging with CloudWatch Logs.

- **Guide**
  - Make sure to replace the placeholders (e.g., ASG_NAME, AWS_REGION, ALARM_NAME, CPU_THRESHOLD, YourSNSTopic, your-kms-key-id, etc.) with your actual AWS Auto Scaling Group name, region, CloudWatch alarm details, SNS topic, and KMS key.
  
- **Usage**:
  ```bash
  ./monitoring.sh
  ```

#### 5. Testing and Optimization

- **Objective**: Continuously test and optimize your scripts and infrastructure to ensure efficiency and reliability.
- **Documentation**:
  - Conduct load testing on your application.
  - Optimize the scaling policies for cost-efficiency.
- **Recommendation**: Use tools like Apache JMeter for load testing.

#### 6. Documentation

- **Objective**: Document your project, including scripts, configurations, and any challenges faced during the implementation.
- **Documentation**:
  - Create a detailed project report including:
    - Overview of the project.
    - Detailed scripts and configurations used.
    - Challenges and solutions encountered.
    - Lessons learned.
- **Recommendation**: Use Markdown for clear and organized documentation.

#### 7. Presentation

- **Objective**: Share your project with the community, discussing the benefits of automation and DevOps practices.
- **Documentation**:
  - Prepare a presentation or blog post about your project.
  - Explain the key takeaways and the impact of automation on DevOps.
- **Recommendation**: Share your presentation on platforms like LinkedIn, GitHub, or a personal blog.

### Conclusion
This project will serve as a testament to your DevOps journey, showcasing your ability to apply DevOps principles in a real-world scenario.

Join us in this exciting project, and let's take another step towards mastering DevOps practices!

Remember to use the hashtag #DevOpsDiary when sharing your progress and insights with the community.


This template provides an organized structure for your AWS DevOps project, with each step documented, script names, objectives, and usage instructions. Feel free to use it as a starting point and customize it to your specific project requirements.