#!/bin/bash

#sleep

cd /var/www/html
yes | wp core download --allow-root --path="." 
yes | wp core config --allow-root --dbhost=$DB_HOST --dbname=hina_db --dbuser=hina --dbpass=root
mysql -uhina -h$DB_HOST -proot -Dhina_db
wp core install --allow-root --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmail.com
wp user create _user _user@example.com --allow-root --role=author
service php7.3-fpm start
