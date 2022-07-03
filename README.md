# Udacity CloudDevOps Engineering

## CC6-L4-C19: Exercise: Configuration and Deployment

Please reference docs folder for additional documentation.

### Solution Folder Structure

```folder-structure
├── ansible.cfg
├── inventory.txt             
└── .circleci
    └── config.yml          # Look for the configure_infrastructure Job
```

### Overral Folder Structure

```folder-structure
└── template.yml           # Change the KeyName and ImageID property value
├── ansible.cfg            # Disables host_key_checking 
├── inventory              # Or it could be inventory.txt
├── main.yml               # Playbook file from the Exercise: Remote Control Using Ansible
└── roles
│   └── setup
│       ├── files
│       │   └── index.js
│       └── tasks
│           └── main.yml
└── .circleci
    └─── config.yml        # Should have the create_infrastructure Job
```

### Steps

#### 1 Ensure you have a usable key pair

```shell
aws ec2 describe-key-pairs
```

#### 2 Add the SSH key from your PEM file to circle CI

#### 3 Create EC2 instance for testing

```shell
sh shell-scripts/stack-create.sh template.yml
```

```shell
sh shell-scripts/stacks-list-created.sh
```

```shell
sh shell-scripts/ec2-instances-list-filtered.sh filters.json
```

#### 4 Bring in Ansible Playbook from previous exercise

#### 5 Create Circle CI Job to execute playbook

#### 6 Add job to workflow

#### 7 Run pipeline and verify successful execution

#### 8 Clean up EC2 instance

```shell
sh shell-scripts/stack-delete.sh demoStack
```
