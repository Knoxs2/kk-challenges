#!/bin/bash

aws rds modify-rds-instance \
    --db-instance-identifier datacenter-rds \
    --deletion-protection



# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-instance.html
# Command Validation: aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='datacenter-rds'].DBInstanceStatus"
# aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='datacenter-rds'].DeletionProtection"
# If true = OK