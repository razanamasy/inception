FROM debian:buster
WORKDIR /app
COPY start1.sh /app
COPY my.cnf ../etc/mysql/my.cnf
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt install mariadb-server mariadb-client
EXPOSE 3306
RUN chmod 777 start1.sh
CMD ["./start1.sh"]
