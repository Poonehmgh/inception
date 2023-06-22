GREEN = \033[0;32m
RED = \033[0;31m
UNDO_COL = \033[0m

NAME = inception
SRC_DIR = srcs/

SRC =	$(SRC_DIR)docker-compose.yml

.PHONY: all clean fclean re

$(NAME): all

all: clean up

up:
	mkdir /Users/pooneh/data
	mkdir /Users/pooneh/data/db_volume
	mkdir /Users/pooneh/data/wordpress_volume
	@echo "$(RED)Building containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) up -d --build
	@echo "$(GREEN)$(NAME) is now up and running!$(UNDO_COL)"

down:
	@echo "$(RED)Shutting down containers for $(NAME)...$(UNDO_COL)"
	docker-compose -f $(SRC) down
	@echo "$(GREEN)Pulled down $(NAME)!$(UNDO_COL)"

clean: down
	@echo "$(RED)Pruning containers and images for $(NAME)...$(UNDO_COL)"
	docker system prune -af
	@echo "$(GREEN)Cleaned up, volumes still exist for $(NAME)!$(UNDO_COL)"

fclean: clean
	@echo "$(RED)Removing all volumes AND MOUNTED DIRECTORIES for $(NAME)...$(UNDO_COL)"
	docker volume rm -f db_volume
	docker volume rm -f wordpress_volume
	rm -rf /Users/pooneh/data/db_volume
	rm -rf /Users/pooneh/data/wordpress_volume
	rm -rf /Users/pooneh/data
	@echo "$(GREEN)Removed all volumes for $(NAME)!$(UNDO_COL)"

re: fclean up

destroy: fclean up

.PHONY: all up down clean re