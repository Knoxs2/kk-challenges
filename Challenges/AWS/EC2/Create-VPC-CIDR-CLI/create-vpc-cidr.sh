#!/bin/bash

aws ec2 create-vpc \
  --cidr-block 192.168.0.0/24 \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=datacenter-vpc}]'


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-vpc.html
# Command Validation: aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='datacenter-vpc']].{CidrBlock:CidrBlock,State:State}"