service mysql start
echo "$MYSQL_DB_NAME $MYSQL_DB_USER et $MYSQL_DB_PASS"
mysql -u root -proot  << EOF
CREATE DATABASE IF NOT EXISTS hina_db ;
SHOW DATABASES ;
USE hina_db ;
CREATE USER "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
SELECT user FROM user ;
GRANT ALL PRIVILEGES ON hina_db.* TO "hina"@"wordpress.inception_my_network" IDENTIFIED BY "root";
FLUSH PRIVILEGES;

EOF
