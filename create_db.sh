#!/usr/bin/env bash

#set params
echo "Enter database name:"
read dbName

#create database (enable for new database creation)
echo "creating database ($dbName)..."
mysql -u root -p -e "CREATE DATABASE ${dbName} CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"

#flush privileges
echo "Flushing privileges..."
mysql -u root -p -e "FLUSH PRIVILEGES;"