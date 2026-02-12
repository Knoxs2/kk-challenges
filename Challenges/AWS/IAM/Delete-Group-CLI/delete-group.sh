#!/bin/bash

aws iam delete-group --group-name iamgroup_siva

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/delete-group.html
# Command Validation: aws iam list-groups --query "Groups[?GroupName=='iamgroup_siva']"
# If returns empty group was deleted successfull