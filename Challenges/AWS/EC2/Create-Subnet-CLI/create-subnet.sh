#!/bin/bash

# First get VPC ID also check for CIDR BLOCK on other subnets for available ones
VPCID=$(aws ec2 describe-vpcs --query 'Vpcs[0].VpcId' --output text)
aws ec2 describe-subnets --query 'Subnets[*].CidrBlock' --output table

aws ec2 create-subnet --vpc-id $VPCID --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=devops-subnet}]' --cidr-block 172.31.200.0/20
