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

# Stop configuration and clean configuration-created files
clean: down
	@docker system prune -a
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf  ~/data/mariadb/*

# Stop configuration and clean all files
fclean:
	@docker stop $$(docker ps -qa)
	@docker system prune -a -f --volumes
	@docker network prune -f
	@docker volume prune -f
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf  ~/data/mariadb/*

.PHONY: all directories build down clean fclean re


# SRC	:= ./src/docker-compose.yml
# NAME	:= inception

# all: ${NAME}

# ${NAME}: ${SRC}
# 	@docker system prune -f
# 	@docker-compose -f ${SRC} up --build

# clean:
# 	@docker-compose -f ${SRC} down
