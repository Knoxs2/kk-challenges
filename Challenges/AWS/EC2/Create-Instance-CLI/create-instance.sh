#!/bin/bash
aws ec2 create-key-pair --key-name nautilus-kp --key-type rsa
SGID=$(aws ec2 describe-security-groups --query SecurityGroups[0].GroupId --output text)
aws ec2 run-instances --tag-specifications 'ResourceType=instance,Tags={[Key=Name,Values=nautilus-ec2]}' --instance-type t2.micro --image-id ami-02029c87fa31fb148 --key-name nautilus-kp --security-groups $SGID

