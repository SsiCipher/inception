COMPOSE_FILE	=	src/docker-compose.yml

all: build up

build:
	docker compose -f $(COMPOSE_FILE) build

up:
	docker compose -f $(COMPOSE_FILE) up

down:
	docker compose -f $(COMPOSE_FILE) down

fclean:
	sudo rm -rf ~/data/*/*
