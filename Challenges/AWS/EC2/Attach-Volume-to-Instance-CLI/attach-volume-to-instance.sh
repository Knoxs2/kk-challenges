IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query Reservations[0].Instances[0].InstanceId --output text)
VID=$(aws ec2 describe-volumes --filter Name=tag:Name,Values='nautilus-volume' --query 'Volumes[0].VolumeId' --output text)

aws ec2 attach-volume --device /dev/sdb --volume-id $VID --instance-id $IID

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/attach-volume.html
# Command validation: aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query 'Reservations[0].Instances[0].BlockDeviceMappings[*].Ebs[?VolumeId==$VID]'