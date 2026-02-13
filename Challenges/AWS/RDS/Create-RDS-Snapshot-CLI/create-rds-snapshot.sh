#!/bin/bash

aws rds create-db-snapshot \
    --db-snapshot-identifier nautilus-rds-snapshot \
    --db-instance-identifier nautilus-rds 

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-snapshots.html
# Another: https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-snapshot.html
# Command validation: aws rds describe-db-snapshots --query "DBSnapshots[?DBSnapshotIdentifier=='nautilus-rds-snapshot'].Status"
