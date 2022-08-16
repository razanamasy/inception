#!/bin/bash

service mysql start
yes | wp core download --allow-root --path="/var/www/html" 
yes | wp core config --dbhost=${WP_DB_HOST} --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_PASS}
${WP_DB_PASS} | mysql -u ${WP_DB_USER} -p
wp core install --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmail.com
wp user create _user _user@example.com --role=author
service php7-fpm start
