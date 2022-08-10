FROM debian:buster
WORKDIR /app
COPY /tools/start.sh /conf
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install php7 php7-fpm
RUN yes | apt-get install curl
RUN yes | curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.pha
CMD ["bash", "/tools/start.sh"]
