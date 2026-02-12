#!/bin/bash

ARN=$(aws iam list-policies --query "Policies[?PolicyName=='iampolicy_jim'].Arn" --output text)

aws iam attach-user-policy --user-name iamuser_jim --policy-arn $ARN



# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/attach-user-policy.html
# Command validation: aws iam list-policies --query "Policies[?PolicyName=='iampolicy_jim'].AttachmentCount" --output text

