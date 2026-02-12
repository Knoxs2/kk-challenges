#!/bin/bash

aws rds create-db-instance \
--db-instance-identifier nautilus-rds \
--db-instance-class db.t3.micro \
--engine mysql \
--engine-version 8.4.5 \
--master-username nautilus_admin \
--master-user-password P@ssword321 \
--allocated-storage 5 \
--publicly-accessible \
--storage-type gp2 


# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html
# Command Validation: aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='nautilus-rds'].DBInstanceStatus"
# Public
# name nautilus-rds
# ENGINE MySQL v8.4.5
# db.t3.micro type
# username nautilus_admin
# Storage type gp2 -> 5GB
# Must be available before send