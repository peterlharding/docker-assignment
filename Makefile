

build:
	docker build . --tag nodedemo

run:
	docker run -it -d --rm -p 127.0.0.1:3000:3000 --name nodedemo nodedemo
	docker container ls

stop:
	./d-stop nodedemo

up:
	docker-compose up -d

down:
	docker-compose down

