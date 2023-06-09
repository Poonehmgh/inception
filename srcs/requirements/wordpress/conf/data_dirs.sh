#!/bin/sh

USER=pma

if [ ! -d "/home/$USER/data" ]; then
	mkdir /home/$USER/data
	mkdir /home/$USER/data/mariadb
	mkdir /home/$USER/data/wordpress
fi