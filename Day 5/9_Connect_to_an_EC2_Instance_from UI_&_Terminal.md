# Day 5 - How to Connect to an EC2 Instance from UI & Terminal
## Free DevOps Course - 45 days
### #devopscourse

### Agenda
- Introduction to Connecting to EC2 Instances
- Connecting to EC2 Instance via AWS Console (UI)
- Connecting to EC2 Instance via SSH (Terminal)
- Best Practices for Secure Connection

### Key Points

1. **Introduction to Connecting to EC2 Instances**
   - Connecting to EC2 instances is a fundamental skill in AWS and DevOps.
   - It allows you to manage and configure your virtual machines (EC2 instances) effectively.
   - Connecting can be done through either the AWS Management Console (UI) or SSH (Terminal).

2. **Connecting to EC2 Instance via AWS Console (UI)**
   - Use the AWS Management Console to access your EC2 instance's UI.
   - The UI provides an intuitive, user-friendly interface for managing your EC2 instances.
   - Follow these steps:
     - Log in to your AWS Management Console.
     - Navigate to the EC2 Dashboard.
     - Locate your EC2 instance and select it.
     - Click on the "Connect" button.
     - Follow the prompts to connect via the browser-based SSH client.

3. **Connecting to EC2 Instance via SSH (Terminal)**
   - SSH (Secure Shell) is a secure protocol for accessing remote servers via the terminal.
   - To connect via SSH, follow these steps:
     - Open your terminal or command prompt.
     - Use the following SSH command, replacing `your-key.pem` with your private key file, and `your-instance-ip` with your instance's public IP address:
       ```
       ssh -i your-key.pem ec2-user@your-instance-ip
       ```
     - If you're using a different username (e.g., ubuntu), replace `ec2-user` with your username.

4. **Best Practices for Secure Connection**
   - Always use SSH key pairs for authentication to enhance security.
   - Create and use security groups to limit SSH access to only trusted IP addresses or ranges.
   - Keep your SSH private keys secure and avoid sharing them.
   - Regularly update and patch your EC2 instances to mitigate security vulnerabilities.

### Homework
- Practice connecting to an EC2 instance via both the AWS Console (UI) and SSH in your AWS account. Document the steps you followed, any challenges you faced, and the solutions you found.

### Additional Resources
- [Connecting to Your Linux Instance Using SSH](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
- [AWS Management Console](https://aws.amazon.com/console/)

Remember, connecting securely to EC2 instances is crucial for maintaining the integrity and security of your AWS infrastructure. Regular practice and adherence to best practices are essential.
