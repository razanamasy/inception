FROM debian
WORKDIR /app
COPY . /app
RUN apt-get update \
&& apt-get upgrade \
&& apt-get install nginx
EXPOSE 443

