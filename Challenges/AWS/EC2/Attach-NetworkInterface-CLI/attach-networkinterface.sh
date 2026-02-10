IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='nautilus-ec2' --query Reservations[0].Instances[0].InstanceId --output text)
NID=$(aws ec2 describe-network-interfaces --filter Name=tag:Name,Values='nautilus-eni' --query NetworkInterfaces[0].NetworkInterfaceId --output text)


aws ec2 attach-network-interface --network-interface-id $NID --instance-id $IID --device-index 1


# Documentation reference

# Network interface
# Each instance has a primary network interface that cannot be detached
# Able to attach a secondary, maximum value varies by instance