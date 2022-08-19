FROM debian:buster
WORKDIR /app
COPY start1.sh /app
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt install mariadb-server mariadb-client
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
RUN chmod 777 start1.sh
CMD ["./start1.sh"]
