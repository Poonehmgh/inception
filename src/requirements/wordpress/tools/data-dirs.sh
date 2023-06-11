#!/bin/sh

USER=pooneh

if [ ! -d "/home/$USER/data" ]; then
	mkdir /Users/pooneh/data
	mkdir /Users/pooneh/data/mariadb
	mkdir /Users/pooneh/data/wordpress
fi