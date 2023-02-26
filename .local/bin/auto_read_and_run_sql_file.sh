#!/bin/bash

# Variables
mysqlPassword="sunny"

# Read the content of the file (sql file)
sqlFile=$(<main.sql)

# Login to mysql passing the query with it
# mysql -u root -pchaungoanbacho -e "$sqlFile" 
mysql -u thangphan "-p$mysqlPassword" -e "$sqlFile" 
