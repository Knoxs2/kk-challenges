IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query Reservations[0].Instances[0].InstanceId --output text)

aws ec2 modify-instance-attribute     --instance-id $IID     --disable-api-stop


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/modify-instance-attribute.html
# Command validation: aws ec2 describe-instances --instance-ids $IID --query "Reservations[].Instances[].DisableApiStop"
# Documentation DeepDive: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html