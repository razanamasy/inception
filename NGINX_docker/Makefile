all :
	docker build -t my_server .
	docker run -p 443:443 --name my_server my_server

status :
	docker ps -a

start :
	docker container start my_server

stop :
	docker container stop my_server

rm :
	docker container rm my_server
