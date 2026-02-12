#!/bin/bash

aws s3api put-bucket-versioning --bucket devops-s3-12840 --versioning-configuration Status=Enabled

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/s3api/put-bucket-versioning.html
# Command Validation: aws s3api get-bucket-versioning --bucket devops-s3-12840
# Should return Enabled