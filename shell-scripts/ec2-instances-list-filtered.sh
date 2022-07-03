# https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
aws ec2 describe-instances --filters file://$1 \
    --query 'Reservations[*].Instances[*].{PublicIpAddress:PublicIpAddress,PublicDnsName:PublicDnsName,InstanceId:InstanceId,SubnetId:SubnetId,SecurityGroups:SecurityGroups}' \
    --output json