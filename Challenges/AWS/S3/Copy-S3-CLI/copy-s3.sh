#!/bin/bash

aws s3 cp /tmp/xfusion.txt s3://xfusion-cp-8789

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/s3/#cli-aws-s3
# Command validation: aws s3 ls s3://xfusion-cp-8789