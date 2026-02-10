#!/bin/bash

aws ec2 allocate-address --domain vpc --tag-specifications 'ResourceType=elastic-ip,Tags=[{Key=Name,Value="devops-eip"}]'

# Documentation Reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/allocate-address.html
# Command Validation: aws ec2 describe-addresses --filters 'Name=tag:Name,Values=devops-eip'
