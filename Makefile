.PHONY: setup test dev build push down

setup:
	docker-compose -f docker-compose.yml run --rm app make setup

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dev:
	docker-compose up

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app

down:
	docker-compose down
