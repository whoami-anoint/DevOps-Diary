# DevOps Tutorial - Day 8
## GitHub API Integration with Shell Scripting
## DevOps Diary 

### Introduction
In Day 8 of our DevOps journey, we will explore how to integrate the GitHub API with shell scripting to automate various tasks related to managing GitHub repositories.\
This tutorial will guide you through the process of setting up authentication, creating repositories, managing issues, working with pull requests, and handling releases using shell scripts.

### Prerequisites
Before starting, ensure you have the following prerequisites:
- [A GitHub account](https://github.com/)
- [Basic knowledge of shell scripting](/Day%206/10_linux_and_shell.md)
- [GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

### Step 1: Setting Up Authentication
To interact with the GitHub API, you need to authenticate your requests. Create a personal access token as described [here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

```bash
# Set your GitHub Personal Access Token as an environment variable
export GITHUB_TOKEN=YOUR_PERSONAL_ACCESS_TOKEN
```

### Step 2: Creating a New Repository
Let's start by writing a script to create a new repository on GitHub using the GitHub API. Create a file named `create_repository.sh` and add the following code:

```bash
#!/bin/bash

# Define your GitHub personal access token
GITHUB_TOKEN="your_github_personal_access_token_here"

# Define the repository name and description
REPO_NAME="my-new-repo"
REPO_DESCRIPTION="This is my new repository"

# Make a POST request to create the repository
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"name\":\"$REPO_NAME\",\"description\":\"$REPO_DESCRIPTION\"}" \
     https://api.github.com/user/repos

```

Make sure to replace `YOUR_PERSONAL_ACCESS_TOKEN` with your actual token.

Run the script:
```bash
bash create_repository.sh
```

### Step 3: Managing Issues
You can also manage issues with the GitHub API. Here's an example of listing issues using a shell script.

```bash
#!/bin/bash

# Define repository owner and name
OWNER="yourusername"
REPO="your-repo-name"

# List issues for the repository
curl -H "Authorization: token $GITHUB_TOKEN" \
     "https://api.github.com/repos/$OWNER/$REPO/issues"
```

### Step 4: Working with Pull Requests
Similarly, you can work with pull requests. Here's an example of creating a pull request using a shell script.

```bash
#!/bin/bash

# Define repository owner and name
OWNER="yourusername"
REPO="your-repo-name"

# Create a new pull request
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"title\":\"New Feature\",\"head\":\"feature-branch\",\"base\":\"main\"}" \
     "https://api.github.com/repos/$OWNER/$REPO/pulls"
```

### Step 5: Handling Releases
Managing releases can also be automated. Here's an example of creating a release using a shell script.

```bash
#!/bin/bash

# Define repository owner and name
OWNER="yourusername"
REPO="your-repo-name"

# Create a new release
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"tag_name\":\"v1.0\",\"name\":\"Release 1.0\",\"body\":\"Initial release\"}" \
     "https://api.github.com/repos/$OWNER/$REPO/releases"
```

### Conclusion
In this tutorial, we've explored how to integrate the GitHub API with shell scripting to automate various GitHub repository management tasks. You can further expand these scripts and integrate them into your DevOps workflow for increased efficiency.

Remember to keep your personal access token secure and consider using environment variables for better security practices.

Don't forget to use the hashtag #DevOpsDiary when sharing your progress and insights with the community.
