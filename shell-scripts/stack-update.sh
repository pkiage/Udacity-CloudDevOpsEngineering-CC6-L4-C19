# https://docs.aws.amazon.com/cli/latest/reference/cloudformation/update-stack.html
aws cloudformation update-stack --stack-name $1 --template-body file://$2 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-west-2
