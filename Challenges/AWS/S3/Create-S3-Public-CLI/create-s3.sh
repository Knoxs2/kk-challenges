#!/bin/bash

aws s3api create-bucket --bucket devops-s3-4829

aws s3api put-public-access-block --bucket devops-s3-4829 --public-access-block-configuration file://policy.json

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/s3api/put-public-access-block.html
# Command validation: aws s3api get-public-access-block --bucket xfusion-s3-26590