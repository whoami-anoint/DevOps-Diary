# Day 5 - How to Connect to an EC2 Instance from UI & Terminal
### #DevOps Diary

### Agenda
- Introduction to Connecting to EC2 Instances
- Connecting to EC2 Instance via AWS Console (UI)
- Connecting to EC2 Instance via SSH (Terminal)
- Best Practices for Secure Connection

### Key Points

#### 1. **Introduction to Connecting to EC2 Instances**
   - Connecting to EC2 instances is a fundamental skill in AWS and DevOps.
   - It allows you to manage and configure your virtual machines (EC2 instances) effectively.
   - Connecting can be done through either the AWS Management Console (UI) or SSH (Terminal).

#### 2. **Connecting to EC2 Instance via AWS     Console (UI)**
   - Use the AWS Management Console to access your EC2 instance's UI.
   - The UI provides an intuitive, user-friendly interface for managing your EC2 instances.
   - Follow these steps:
     - Log in to your AWS Management Console.
     - Navigate to the EC2 Dashboard.
     - Locate your EC2 instance and select it.
     - Click on the "Connect" button.
     - Follow the prompts to connect via the browser-based SSH client.

#### 3. **Connecting to EC2 Instance via SSH (Terminal)**
   - SSH (Secure Shell) is a secure protocol for accessing remote servers via the terminal.
   - To connect via SSH, follow these steps:
     - Open your terminal or command prompt.
     - Use the following SSH command, replacing `your-key.pem` with your private key file, and `your-instance-ip` with your instance's public IP address:
       ```
       ssh -i your-key.pem ec2-user@your-instance-ip
       ```
     - If you're using a different username (e.g., ubuntu), replace `ec2-user` with your username.

#### 4.**Configure SSH Server***

To enable password-based authentication for SSH on your EC2 instance, follow these steps:

a. Edit the SSH server configuration file:

   ```shell
   sudo nano /etc/ssh/sshd_config
   ```

b. Find the line that says `PasswordAuthentication no` and change it to:

   ```shell
   PasswordAuthentication yes
   ```

c. Save the file and exit the text editor.

d. Restart the SSH service to apply the changes:

   ```shell
   sudo service ssh restart
   ```

Now, your SSH server is configured to allow password-based authentication.

### 5.**Connect with Username and Password**

To connect to your EC2 instance using SSH with a username and password, follow these steps:

a. Open a new terminal window on your local machine.

b. Use the following command to connect to your EC2 instance:

   ```shell
   ssh <username>@<public_ip>
   ```

   Replace `<username>` with the username you created in Step 3, and `<public_ip>` with the public IP address of your EC2 instance.

c. You will be prompted to enter the password you set for the user in Step 3.

d. After successfully entering the password, you should now be connected to your EC2 instance via SSH.

You have now configured your EC2 instance to allow SSH access using a username and password and successfully connected to it using these credentials.

This steps to configure the SSH server to allow password-based authentication and connect to your EC2 instance using a username and password.


#### 6.**Best Practices for Secure Connection**
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
