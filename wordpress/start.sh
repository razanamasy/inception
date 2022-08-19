#!/bin/bash

sleep 10

cd /var/www/html
yes | wp core download --allow-root --path="." 
#mysql -uhina -hmariadb.inception_my_network -proot -Dhina_db
yes | wp config create --allow-root --dbhost=mariadb.inception_my_network --dbname=hina_db --dbuser=hina --dbpass=root --path="."
wp core install --allow-root --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=admin_password --admin_email=hina.razanamasy@gmail.com
wp user create _user _user@example.com --allow-root --role=author
service php7.3-fpm start
