# Shell Commands

Commands starting with sh are given as example if run from repo root folder

## AWS

### Configure

```shell
aws configure
```

### Create

```shell
sh shell-scripts/stack-create.sh demo-stack template.yml
```

### Update

```shell
sh shell-scripts/stack-update.sh demo-stack template.yml
```

### List

#### Key Pairs

```shell
aws ec2 describe-key-pairs
```

#### Stacks

```shell
sh shell-scripts/stack-list-created
```

#### EC2 Instances

```shell
sh shell-scripts/ec2-instances-list-filtered filters.json
```

### Delete

```shell
sh shell-scripts/stack-delete.sh template-stack
```
