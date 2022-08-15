#!/bin/bash

service mysql start
yes | wp core download 
yes | wp core config --dbhost=${WP_DB_HOST} --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_PASS}
${WP_DB_PASS} | mysql -u ${WP_DB_USER} -p

chmod 644 wp-config.php
wp core install --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmail.com
service php7-fpm start
