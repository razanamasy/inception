all :
	docker build -t my_db .
	docker run -d -p 3306:3306 --name my_db my_db

status :
	docker ps -a
	docker images

start :
	docker container start my_db

stop :
	docker container stop my_db

exec :
	docker exec -ti my_db /bin/ls

rm :
	docker container stop my_db
	docker container rm my_db
	docker image rm my_db

