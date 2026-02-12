#!/bin/bash

VID=$(aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='devops-vpc']].VpcId" --output text)

aws ec2 delete-vpc \
    --vpc-id $VID


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/delete-vpc.html
# Command validation: aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='devops-vpc']]"