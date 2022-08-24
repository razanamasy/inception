all:
	mkdir -p /home/hrazanam/data/maria-data
	mkdir -p /home/hrazanam/data/wp-data
	chmod 777 /home/hrazanam/data/wp-data
	docker-compose -f srcs/docker-compose.yml up --build --detach
rm: 
	docker stop nginx
	docker stop mariadb
	docker stop wordpress
	docker container rm nginx mariadb wordpress
	docker rmi nginx wordpress mariadb 
	docker volume rm srcs_maria-dataa
	docker volume rm srcs_wp-dataa
	find . -type f -name "*.sw[klmnop]" -delete

status:
	docker images
	docker ps -a
