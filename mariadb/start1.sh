service mysql start
mariadb  << EOF
CREATE DATABASE IF NOT EXISTS hina_db ;
SHOW DATABASES ;
CREATE USER "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
GRANT ALL PRIVILEGES ON hina_db.* TO "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
FLUSH PRIVILEGES;
EOF
exec mysqld
