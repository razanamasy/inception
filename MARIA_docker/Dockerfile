FROM debian:buster
WORKDIR /app
COPY start.sh /app
RUN yes | sudo apt-get upgrade
RUN sudo apt-get update
RUN yes | sudo apt-get upgrade
RUN yes | sudo apt-get mariadb-server mariadb-client
CMD ["bash", "start.sh"]
#in the script we have to create a database and a client
