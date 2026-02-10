IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='datacenter-ec2' --query Reservations[0].Instances[0].InstanceId --output text)
AllocationID=$(aws ec2 describe-addresses --filter Name=tag:Name,Values='datacenter-ec2-eip' --query 'Addresses[0].AllocationID')
# In order to attach the public IP address to a instance you first need to allocate public ip address,

aws ec2 associate-address --instance-id $IID --allocation-id $AllocationID

# Documentation Reference: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-eips.html