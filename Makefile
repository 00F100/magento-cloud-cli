.PHONY: install container

install:
	docker image build -t 00f100/magento-cloud-cli:0.0.1 --build-arg USER_ID=$(shell id -u) .docker/php/7.2

container:
	docker container run -it --rm --user phpcli 00f100/magento-cloud-cli:0.0.1