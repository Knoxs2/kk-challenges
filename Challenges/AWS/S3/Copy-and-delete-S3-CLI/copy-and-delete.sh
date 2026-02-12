#!/bin/bash

aws s3 cp s3://nautilus-bck-21836 /opt
aws s3 ls s3://datacenter-bck-26233
aws s3 rm s3://datacenter-bck-26233/datacenter.txt
aws s3api delete-bucket --bucket datacenter-bck-26233


# Documentation referece: https://docs.aws.amazon.com/cli/latest/reference/s3/#cli-aws-s3
# Command validation: aws s3api list-buckets --query "Buckets[?Bucket=='datacenter-bck-26233']"