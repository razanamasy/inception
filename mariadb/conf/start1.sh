#!/bin/bash

service mysql start
mysql  << EOF
CREATE DATABASE IF NOT EXISTS hina_db ;
SHOW DATABASES ;
CREATE USER "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
GRANT ALL PRIVILEGES ON hina_db.* TO "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
FLUSH PRIVILEGES;
EOF
sleep 3
service mysql stop
exec mysqld
