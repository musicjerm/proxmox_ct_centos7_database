#!/usr/bin/env bash

#set params
echo "Enter database name:"
read dbName

echo "Enter db username:"
read dbUser

echo "Enter db password:"
read -s dbPass

echo "Enter application host or IP:"
read appHost

#create user
echo "Creating user ($dbUser)..."
mysql -u root -p -e "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ${dbName}.* TO ${dbUser}@${appHost} IDENTIFIED BY '${dbPass}';"

#flush privileges
echo "Flushing privileges..."
mysql -u root -p -e "FLUSH PRIVILEGES;"