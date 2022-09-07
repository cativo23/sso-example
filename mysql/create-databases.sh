#!/usr/bin/env bash

# Create HYDRA database
mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS $DB_DATABASE_HYDRA;
    CREATE USER '$DB_USERNAME_HYDRA'@'%' IDENTIFIED WITH mysql_native_password BY '$DB_PASSWORD';
    GRANT ALL ON \`$DB_DATABASE_HYDRA%\`.* TO '$DB_USERNAME_HYDRA'@'%';
EOSQL

# Create KRATOS database
mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS $DB_DATABASE_KRATOS;
    CREATE USER '$DB_USERNAME_KRATOS'@'%' IDENTIFIED WITH mysql_native_password BY '$DB_PASSWORD';
    GRANT ALL ON \`$DB_DATABASE_KRATOS%\`.* TO '$DB_USERNAME_KRATOS'@'%';
EOSQL