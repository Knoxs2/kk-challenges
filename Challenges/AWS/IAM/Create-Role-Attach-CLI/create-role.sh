#!/bin/bash


RID=$(aws iam create-role --role-name iamrole_john --assume-role-policy-document file://policy.json --query Role.RoleId --output text)

ARN=$(aws iam list-policies --query "Policies[?PolicyName=='iampolicy_john'].Arn")

aws iam attach-role-policy --role-name iamrole_john --policy-arn $ARN

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/create-role.html
# Command validation: aws iam list-roles --query "Roles[?RoleId=='$RID']" 