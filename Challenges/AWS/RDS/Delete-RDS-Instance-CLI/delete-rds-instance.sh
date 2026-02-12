#!/bin/bash

aws rds delete-db-instance \
    --db-instance-identifier xfusion-rds

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/rds/delete-db-instance.html
# Command validation: aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='xfusion-rds'].DBInstanceStatus"