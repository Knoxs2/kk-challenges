#!/bin/bash
IID=$(aws ec2 describe-instances --filter Name=tag:Name,Values='devops-ec2' --query Reservations[0].Instances[0].InstanceId --output text)

aws ec2 stop-instances --instance-id $IID
aws ec2 modify-attribute-instance --instance-id $IID --instance-type t2.nano
aws ec2 start-instances --instance-id $IID


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/modify-instance-attribute.html
