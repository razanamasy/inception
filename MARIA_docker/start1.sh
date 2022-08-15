CREATE DATABASE 'Maria' 
CREATE USER 'hina'@localhost IDENTIFIED BY 'mdp';

#only on localhost permission to acces and ue the MySQL server
GRANT USAGE ON *.* TO 'hina'@localhost IDENTIFIED BY 'mdp';
#Any computer on the network permission to acces and ue the MySQL server
#GRANT USAGE ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';

#Grant all privileges to a user on a specific database
#MySQL 5.7 and earlier versions
GRANT ALL PRIVILEGES ON 'Maria'.* TO 'hina'@localhost IDENTIFIED BY 'mdp';
#GRANT ALL ON *.* TO ${MYSQL_DB_USER}@'localhost' IDENTIFIED BY ${MYSQL_DB_PASS} WITH GRANT OPTION;

#Apply privileges
FLUSH PRIVILEGES;
