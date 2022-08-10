#!/bin/bash

yes | wp core download
yes | wp core config --dbhost=host.db --dbname=prefix_db --dbuser=username --dbpass=password
chmod 644 wp-config.php
wp core install --url=hrazanam.42.fr --title="coucou" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmail.com
