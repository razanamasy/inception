all:
	docker-compose up --build --detach
rmMaria:
	docker container rm mariadb
	docker rmi mariadb

rm: 
	docker stop nginx
	docker container rm nginx mariadb wordpress
	docker rmi nginx wordpress mariadb

status:
	docker images
	docker ps -a
