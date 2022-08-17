#!/bin/bash

cd /var/www/html
yes | wp core download --allow-root --path="." 
yes | wp core config --allow-root --dbhost=${DB_HOST} --dbname=${WP_DB_NAME} --dbuser=${WP_DB_USER} --dbpass=${WP_DB_PASS}
mysql -u ${WP_DB_USER} -p${WP_DB_PASS}
wp core install --allow-root --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmail.com
wp user create _user _user@example.com --allow-root --role=author
service php7.3-fpm start
