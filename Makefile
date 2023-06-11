SRCDIR	:= ./src
ENV			:= $(SRCDIR)/.env
COMPOSE		:= $(SRCDIR)/docker-compose.yml
DIRS		:= $(SRCDIR)/requirements/wordpress/tools/data-dirs.sh


all: directories
	@docker-compose -f $(COMPOSE) --env-file $(ENV) up -d

directories:
	sh $(DIRS)

build:
	@docker-compose -f $(COMPOSE) --env-file $(ENV) up -d --build

down:
	@docker-compose -f $(COMPOSE) --env-file $(ENV) down

re: down build

clean: down
	@docker system prune -a --volumes
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*

fclean:
	@docker-compose -f $(COMPOSE) --env-file $(ENV) down
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*


.PHONY: all directories build down clean fclean re
