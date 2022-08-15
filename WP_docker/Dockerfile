FROM debian:buster
WORKDIR /app
COPY /start.sh /app
#ici wp-config.php a copier aussi
#ici wp-config.php a copier aussi fichier de config wordpress
#ici php-fpm.php a copier aussi fichier de config wordpress
#les fichiers de configuration php-fpm et wordpress
COPY conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY conf/www.conf /etc/php7/php-fpm.d/www.conf

RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install mariadb-client
RUN mysql_secure_installation
RUN yes | apt-get install php7 php7-fpm
RUN yes | apt-get install curl
RUN yes | curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.pha

EXPOSE 9000
CMD ["bash", "start.sh"]
