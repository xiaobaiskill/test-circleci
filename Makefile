SHELL = /bin/bash

docker-build:
	docker build -t jinmz/hello-circile:latest .


docker-push: docker-build
	docker push jinmz/hello-circile:latest