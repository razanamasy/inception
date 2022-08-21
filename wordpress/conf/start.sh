#!/bin/bash

sleep 10

cd /var/www/html
yes | wp core download --allow-root --path="." 
rm wp-config.php
cp ../../../wp-config.php ./
cd ../../../
wp core install --allow-root --path="/var/www/html" --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=admin_password --admin_email=hina.razanamasy@gmail.com --skip-email
wp user create --allos-root --path="/var/www/html" _user _user@example.com --role=author
service php7.3-fpm start
