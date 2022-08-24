all :
	docker build -t my_wp .
	docker run -p 9000:9000 --name my_wp my_wp

status :
	docker ps -a
	docker images

start :
	docker container start my_wp

stop :
	docker container stop my_wp

exec :
	docker exec -ti my_db /bin/ls

rm :
	docker container rm my_wp
#	docker rm -fv $(docker ps -aq)
