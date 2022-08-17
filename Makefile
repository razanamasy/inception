all:
	docker-compose up --build --detach
rm: 
	docker stop nginx
	docker container rm nginx mariadb wordpress
	docker rmi nginx wordpress mariadb
