NAME = inception
SRC_DIR = srcs/
SRC =	$(SRC_DIR)docker-compose.yml

$(NAME): all

all: clean up

up:
# mkdir /Users/pooneh/data
# mkdir /Users/pooneh/data/db_volume
# mkdir /Users/pooneh/data/wordpress_volume
	mkdir /Users/pooneh/data
	mkdir /home/poonehinc/data/db_volume
	mkdir /home/poonehinc/data/wordpress_volume
	docker-compose -f $(SRC) up -d --build

down:
	docker-compose -f $(SRC) down

clean: down
	docker system prune -af

fclean: clean
	docker volume rm -f db_volume
	docker volume rm -f wordpress_volume
# rm -rf /Users/pooneh/data/db_volume
# rm -rf /Users/pooneh/data/wordpress_volume
# rm -rf /Users/pooneh/data
	rm -rf /Users/pooneh/data
	rm -rf /home/poonehinc/data/db_volume
	rm -rf /home/poonehinc/data/wordpress_volume

re: fclean up

destroy: fclean up

.PHONY: all up down clean re
