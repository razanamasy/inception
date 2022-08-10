FROM debian:buster
WORKDIR /app
COPY
RUN apt-get update
RUN apt-get upgrade
RUN apt-gt install php-fpm
RUN yes | curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.pha
RUN yes | wp core download
RUN yes | wp core config --dbhost=host.db --dbname=prefix_db --dbuser=username --dbpass=password
RUN chmod 644 wp-config.php
RUN wp core install --url=hrazanam.42.fr --title="Your Blog Title" --admin_name=wordpress_admin --admin_password=4Long&Strong1 --admin_email=hina.razanamasy@gmil.com
EXPOSE 
CMD []
