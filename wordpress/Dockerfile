FROM debian:buster
COPY conf/start.sh /start.sh

#ici wp-config.php a copier aussi
#ici wp-config.php a copier aussi fichier de config wordpress
#ici php-fpm.php a copier aussi fichier de config wordpress
#les fichiers de configuration php-fpm et wordpress

#COPY conf/php-fpm.conf /etc/php7/php-fpm.conf

RUN apt-get update
#RUN yes | apt-get upgrade
RUN yes | apt-get install mariadb-client
RUN yes | apt-get install php php7.3-fpm
RUN yes | apt-get install curl
RUN yes | curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp
RUN chmod +x  /usr/local/bin/wp

#RUN	rm /etc/php7/php-fpm.d/www.conf
#COPY conf/www.conf /etc/php7/php-fpm.d/www.conf

COPY conf/wp-config.php /wp-config.php

RUN mkdir -p var/www/html
EXPOSE 9000
CMD ["bash", "start.sh"]
