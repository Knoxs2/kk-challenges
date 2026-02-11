IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query Reservations[0].Instances[0].InstanceId --output text)

aws ec2 terminate-instances --instance-id $IID


# Documentation references: https://docs.aws.amazon.com/cli/latest/reference/ec2/terminate-instances.html
# Documentation validation: aws ec2 describe-instances --query "Reservations[*].Instances[?InstanceId=='$IID'].State" --output text


