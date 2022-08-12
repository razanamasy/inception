CREATE DATABASE ${MYSQL_DB_NAME}
CREATE USER '${MYSQL_DB_USER}'@localhost IDENTIFIED BY '${MYSQL_DB_PASS}';

#only on localhost permission to acces and ue the MySQL server
GRANT USAGE ON *.* TO 'myuser'@localhost IDENTIFIED BY '${MYSQL_DB_PASS}';
#Any computer on the network permission to acces and ue the MySQL server
#GRANT USAGE ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';

#Grant all privileges to a user on a specific database
#MySQL 5.7 and earlier versions
GRANT ALL PRIVILEGES ON ${MYSQL_DB_NAME}.* TO '${MYSQL_DB_USER}'@'localhost' IDENTIFIED BY '${MYSQL_DB_PASS}';
#GRANT ALL ON *.* TO ${MYSQL_DB_USER}@'localhost' IDENTIFIED BY ${MYSQL_DB_PASS} WITH GRANT OPTION;

#Apply privileges
FLUSH PRIVILEGES;
