#!/bin/bash

# Create volume with some values, gp3 type , tag specifications to Name it, az -> us-east-1a
aws ec2 create-volume --size 2 --volume-type gp3 --tag-specifications 'ResourceType=volume,Tags=[{Key=Name,Value=xfusion-volume}]' --availability-zone us-east-1a


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-volume.html
# Command validation: aws ec2 describe-volumes --filter Name=tag:Name,Values=xfusion-volume --output table