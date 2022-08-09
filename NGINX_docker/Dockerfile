FROM debian:buster
WORKDIR /app
COPY nginx.conf /etc/nginx/sites-available/default
RUN apt-get update
RUN apt-get upgrade
RUN yes | apt-get install nginx
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
