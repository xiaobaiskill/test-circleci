SHELL = /bin/bash

docker-build:
	@echo "docker build"; \
	BRANCH_NAME="$(shell git rev-parse --abbrev-ref HEAD)"; \
	docker build -t jinmz/hello-circile:$$BRANCH_NAME .


docker-push: docker-build
	@echo "docker push"
	BRANCH_NAME=$(shell git rev-parse --abbrev-ref HEAD); \
	docker push jinmz/hello-circile:$$BRANCH_NAME