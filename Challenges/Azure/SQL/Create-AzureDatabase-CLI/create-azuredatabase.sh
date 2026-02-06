#!/bin/bash
RG=$(az group list --query '[0].name' -o tsv)

# Need to create database server first
az sql server create --name datacenter-server-31541 -g $RG --admin-password P@ssW0rD321  --admin-user datacenter-admin 

# Create DB
az sql db create --name datacenter-sqldb -g $RG --server datacenter-server-31541 --service-level-objective Basic --backup-storage-redundancy Local --min-capacity 2 


# documentation reference: https://learn.microsoft.com/en-us/cli/azure/sql/db?view=azure-cli-latest#az-sql-db-create
# documentation from server creation: https://learn.microsoft.com/en-us/cli/azure/sql/server?view=azure-cli-latest#az-sql-server-create