# Day 6 - Linux & Shell Scripting
## DevOps_Diary
### #devopscourse

### Agenda
- Introduction to Linux Operating System
- Basic Linux Commands
- Introduction to Shell Scripting
- Writing Your First Shell Script
- Best Practices for Shell Scripting

### Key Points

### 1. **Introduction to Linux Operating System**
   - Linux is a robust open-source operating system commonly used in server environments.
   - Key characteristics include security, stability, and a wide range of distributions (e.g., Ubuntu, CentOS, Debian).
   - Understanding Linux fundamentals is crucial for DevOps professionals as many cloud servers run on Linux distributions.

### 2. Basic Linux Commands

Learn essential Linux commands for effective command-line navigation and management. Common Daily DevOps Commands include:

- **`ls`**: List files and directories in the current directory.
  - Common options:
    - `-l`: Display detailed information.
    - `-a`: List hidden files.
  - Example:
    ```bash
    ls -la
    ```

- **`cd`**: Change directories.
  - Example:
    ```bash
    cd /path/to/directory
    ```

- **`pwd`**: Print the current working directory.
  - Example:
    ```bash
    pwd
    ```

- **`mkdir`**: Create directories.
  - Example:
    ```bash
    mkdir my_directory
    ```

- **`rm`**: Remove files or directories.
  - Common options:
    - `-r`: Remove directories recursively.
    - `-f`: Force removal without confirmation.
  - Example:
    ```bash
    rm -rf directory_to_remove
    ```

- **`cp`**: Copy files and directories.
  - Example:
    ```bash
    cp file.txt /destination/
    ```

- **`mv`**: Move or rename files and directories.
  - Example:
    ```bash
    mv old_name.txt new_name.txt
    ```

- **`ps`**: List running processes.
  - Common options:
    - `-e`: Display all processes.
    - `-f`: Display detailed information.
  - Example:
    ```bash
    ps aux
    ```

- **`top`**: Real-time system monitor.
  - Example:
    ```bash
    top
    ```

- **`grep`**: Search text using patterns.
  - Example:
    ```bash
    grep "keyword" file.txt
    ```

- **`find`**: Search for files and directories.
  - Example:
    ```bash
    find /path/to/search -name "file_pattern"
    ```

- **`tar`**: Archive files.
  - Example:
    ```bash
    tar -czvf archive.tar.gz directory_to_archive
    ```

- **`gzip`** and **`gunzip`**: Compress and decompress files.
  - Example:
    ```bash
    gzip file.txt
    ```

- **`ssh`**: Securely connect to remote servers.
  - Example:
    ```bash
    ssh user@remote_server
    ```

- **`scp`**: Securely copy files between local and remote servers.
  - Example:
    ```bash
    scp local_file.txt user@remote_server:/path/to/destination/
    ```

- **`chmod`**: Change file permissions.
  - Example:
    ```bash
    chmod +x script.sh
    ```

- **`chown`**: Change file ownership.
  - Example:
    ```bash
    chown user:group file.txt
    ```

- **`curl`**: Transfer data with URLs.
  - Example:
    ```bash
    curl https://example.com
    ```

- **`wget`**: Download files from the internet.
  - Example:
    ```bash
    wget https://example.com/file.txt
    ```

- **`df`**: Display disk space usage.
  - Example:
    ```bash
    df -h
    ```

These Linux commands are essential for managing servers, troubleshooting issues, and automating tasks in a DevOps environment. Familiarity with these commands is crucial for success in DevOps roles.
   - Practice these commands to become familiar with the Linux file system.

### 3. **Introduction to Shell Scripting**
   - Shell scripting involves writing and executing scripts in a shell (command-line environment) to automate tasks.
   - Common shells include Bash (Bourne Again SHell), Zsh, and Fish.
   - Shells interpret and execute commands, making them powerful tools for automation.

### 4. **Writing Your First Shell Script**
   - Start by creating a simple "Hello World" script in Bash or your preferred shell.
   - Open a text editor and write your script, e.g.:
     ```bash
     #!/bin/bash
     echo "Hello, DevOps!"
     ```
   - Make the script executable using the `chmod` command:
     ```bash
     chmod +x scriptname.sh
     ```
   - Execute the script:
     ```bash
     ./scriptname.sh
     ```

5. **Best Practices for Shell Scripting**
   - Use comments extensively to document your scripts for better readability.
   - Ensure your scripts have proper error handling to gracefully handle unexpected situations.
   - Keep scripts modular and reusable by defining functions.
   - Follow security best practices to prevent unauthorized access to your scripts.
   - Avoid hardcoding sensitive information like passwords or API keys in your scripts.

### Homework
- Practice basic Linux commands by navigating through your system, creating, moving, and deleting files and directories.
- Write a simple shell script that performs a task of your choice and share it in the discussions for feedback.

### Additional Resources
- [Linux Command Line Basics](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview)
- [Bash Scripting Tutorial](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

Understanding Linux and shell scripting is foundational for DevOps practitioners. It empowers you to automate tasks and manage server environments efficiently.

[Click here to continue to Day 7](/Day%207/) <!-- Update with Day 10 link when available -->