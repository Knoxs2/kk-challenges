#!/bin/bash
aws rds modify-db-instance \
    --db-instance-identifier devops-rds \
    --engine-version 8.4.5

# instance name: devops-rds
# Command Validation: aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='devops-rds'].{Status:DBInstanceStatus, Version:EngineVersion}"
# Document reference: https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-instance.html
