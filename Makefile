all:
	mkdir -p ../data/maria-data
	mkdir -p ../data/wp-data
	chmod 777 ../data/wp-data
	docker-compose up --build --detach
rmMaria:
	docker stop mariadb
	docker container rm mariadb
	docker rmi mariadb

rmWP:
	docker stop wordpress
	docker container rm wordpress
	docker rmi wordpress 

rm: 
	docker stop nginx
	docker stop mariadb
	docker stop wordpress
	docker container rm nginx mariadb wordpress
	docker rmi nginx wordpress mariadb 
	docker-compose down -volumes
	find . -type f -name "*.sw[klmnop]" -delete

status:
	docker images
	docker ps -a
