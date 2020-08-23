#!make

-include .env

TARGET := kilip/routeros:$(ROUTEROS_VERSION)

build:
	docker build -t $(TARGET) -f Dockerfile .

push:
	echo "$(DOCKER_PASSWORD)" |  docker login -u "$(DOCKER_USERNAME)" --password-stdin
	docker push $(TARGET)