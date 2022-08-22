FROM debian:buster
COPY conf/start1.sh start1.sh
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt install mariadb-server mariadb-client
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
RUN chmod 777 start1.sh
RUN mkdir -p /var/lib/mysql
CMD ["./start1.sh"]
