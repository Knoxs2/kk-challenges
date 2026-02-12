#!/bin/bash

aws s3api create-bucket --bucket datacenter-s3-11881
aws s3api put-public-access-block --bucket datacenter-s3-11881 --public-access-block-configuration file://policy.json 

# Documetantion reference: https://docs.aws.amazon.com/cli/latest/reference/s3api/put-public-access-block.html
# Command validation: aws s3api get-public-access-block --bucket datacenter-s3-11881