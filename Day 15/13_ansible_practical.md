# Ansible Practicals

## Practical 1: Configuration Management

**Objective:** Learn how to use Ansible for configuration management.

**Solution:**
1. Create a playbook file (e.g., [`playbook.yml`](/Day%2015/1_playbook.yaml)) with the desired configuration tasks.
2. Define the target hosts in the inventory file (e.g., `inventory.ini`).
3. Run the playbook to apply the configuration changes.

Example commands:
- Install packages:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Manage services:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Configure files:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

## Practical 2: Infrastructure Provisioning

**Objective:** Learn how to use Ansible for infrastructure provisioning.

**Solution:**
1. Create a playbook file (e.g., `playbook.yml`) with tasks to provision infrastructure resources.
2. Define the target hosts in the inventory file (e.g., `inventory.ini`).
3. Run the playbook to provision the infrastructure.

Example commands:
- Create EC2 instances:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Provision virtual machines:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Configure network devices:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

## Practical 3: Application Deployment

**Objective:** Learn how to use Ansible for application deployment.

**Solution:**
1. Create a playbook file (e.g., `playbook.yml`) with tasks to deploy the application.
2. Define the target hosts in the inventory file (e.g., `inventory.ini`).
3. Run the playbook to deploy the application.

Example commands:
- Deploy web applications:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Update application configurations:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Manage database migrations:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

## Practical 4: CI/CD

**Objective:** Learn how to use Ansible for CI/CD.

**Solution:**
1. Create a playbook file (e.g., `playbook.yml`) with tasks to trigger CI/CD pipelines or deploy artifacts.
2. Define the target hosts in the inventory file (e.g., `inventory.ini`).
3. Run the playbook to trigger CI/CD or deploy artifacts.

Example commands:
- Trigger CI/CD pipelines:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Deploy application artifacts:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Rollback deployments:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

## Practical 5: Security and Compliance

**Objective:** Learn how to use Ansible for security and compliance.

**Solution:**
1. Create a playbook file (e.g., `playbook.yml`) with tasks to apply security patches, enforce configurations, or perform compliance audits.
2. Define the target hosts in the inventory file (e.g., `inventory.ini`).
3. Run the playbook to apply security measures or perform compliance checks.

Example commands:
- Apply security patches:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Enforce security configurations:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Perform compliance audits:
  ```
  ansible-playbook -i inventory.ini playbook.yml
  ```