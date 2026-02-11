VID=$(aws ec2 describe-volumes --filter Name=tag:Name,Values='datacenter-vol' --query 'Volumes[0].VolumeId' --output text)

aws ec2 create-snapshot --volume-id $VID --description "datacenter Snapshot" --tag-specifications --tag-specifications 'ResourceType=snapshot,Tags=[{Key=Name,Value=datacenter-vol-ss}]'

# Documentation Reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-snapshot.html
# Command Validation: aws ec2 describe-snapshots --query "Snapshots[?Tags[?Key=='Name' && Value=='datacenter-vol-ss']]"