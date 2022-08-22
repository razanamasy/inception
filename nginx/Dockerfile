FROM debian:buster
RUN apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install nginx

RUN rm /etc/nginx/sites-available/default
COPY default /etc/nginx/sites-available/default

RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default 
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
