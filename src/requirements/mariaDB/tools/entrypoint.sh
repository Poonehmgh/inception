#!/bin/sh

# Initialize the MariaDB data directory
mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Start the MariaDB server
exec mysqld_safe --user=mysql --datadir=/var/lib/mysql
