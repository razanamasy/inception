FROM debian:buster
WORKDIR /app
COPY . /app
RUN apt-get update
RUN apt-get upgrade
RUN yes | apt-get install nginx
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
