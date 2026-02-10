#!bin/bash

# Create the security Group
aws ec2 create-security-group --description "Security group for Nautilus App Servers" --group-name xfusion-sg

read SGID VPCID <<< $(aws ec2 describe-security-groups --filter Name=group-name,Values=xfusion-sg --query "SecurityGroups[0].{GroupId:GroupId, VpcId:VpcId}" --output text

aws ec2 authorize-security-group-ingress --group-id $SGID --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id $SGID --protocol tcp --port 22 --cidr 0.0.0.0/0


# Documentation Reference for Authorizing Ingress: https://docs.aws.amazon.com/cli/latest/reference/ec2/authorize-security-group-ingress.html
# Documentation for Creating security-Group: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-security-group.html