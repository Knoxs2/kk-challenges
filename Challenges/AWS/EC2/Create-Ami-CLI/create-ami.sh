IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query Reservations[0].Instances[0].InstanceId --output text)


ID=$(aws ec2 create-image --instance-id $IID --name nautilus-ec2-ami--query ImageId --output text)

# Documentation reference: https://docs.aws.amazon.com/managedservices/latest/ctref/deployment-advanced-ami-create.html
# Another one: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-image.html
# Command validation: aws ec2 describe-images --query "Images[?ImageId=='$ID']"