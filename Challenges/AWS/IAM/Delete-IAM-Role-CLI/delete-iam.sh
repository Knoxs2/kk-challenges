#!/bin/bash
aws iam delete-role --role-name iamrole_jim 


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/delete-role.html
# Command validation: aws iam list-roles --query "Roles[?RoleName=='iamrole_jim']"