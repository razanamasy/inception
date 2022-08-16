FROM debian:buster
WORKDIR /app
COPY start.sh /app
COPY start1.sh /app
COPY create_db.sql /app
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt install mariadb-server mariadb-client
EXPOSE 3306
CMD ["bash", "start.sh"]
