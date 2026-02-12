#!/bin/bash


aws ec2 create-vpc \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=nautilus-vpc}]' \
  --amazon-provided-ipv6-cidr-block


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-vpc.html
# Documentation Validation: aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='datacenter-vpc']].{CidrBlock:CidrBlock,State:State}"