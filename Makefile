all:
	mkdir -p /Users/hinaraza/data/maria-data
	mkdir -p /Users/hinaraza/data/wp-data
	chmod 777 /Users/hinaraza/data/wp-data
	docker-compose -f srcs/docker-compose.yml up --build --detach

start:
	docker-compose -f srcs/docker-compose.yml start 

stop:
	docker-compose -f srcs/docker-compose.yml stop 

rm_cont:
	docker container rm nginx mariadb wordpress

rm_image:
	docker rmi nginx mariadb wordpress

rm_vol:
	docker volume rm srcs_maria-data
	docker volume rm srcs_wp-data

rm_useless:
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -a -q)

rm: 
	docker-compose -f srcs/docker-compose.yml down 
	docker rmi nginx mariadb wordpress
	find . -type f -name "*.sw[klmnop]" -delete

status:
	docker images
	docker ps -a

