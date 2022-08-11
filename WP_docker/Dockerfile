FROM debian:buster
WORKDIR /app
COPY /start.sh /app
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install mariadb-client
RUN mysql_secure_installation
RUN yes | apt-get install php7 php7-fpm
RUN yes | apt-get install curl
RUN yes | curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.pha
EXPOSE 9000
CMD ["bash", "start.sh"]
