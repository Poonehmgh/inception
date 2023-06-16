# # Use Alpine Linux as the base image
# FROM alpine:3.17

# # Install MariaDB and other dependencies
# RUN apk add --no-cache mariadb mariadb-client

# # Copy the MariaDB configuration file
# COPY requirements/mariaDB/conf/md.conf /etc/mysql/md.conf

# # Set the data directory for MariaDB
# RUN mkdir -p /var/lib/mysql

# # Set the entrypoint script
# COPY requirements/mariaDB/tools/entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# # Expose the default MariaDB port
# EXPOSE 3306

# # Set the entrypoint command
# ENTRYPOINT ["/entrypoint.sh"]

FROM alpine:3.14
RUN apk update && apk add mariadb mariadb-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld
COPY requirements/mariaDB/conf/md.conf /etc/mysql/md.conf
COPY requirements/mariaDB/tools/init.sql /docker-entrypoint-initdb.d/
COPY requirements/mariaDB/tools/default_to_env.sh /docker-entrypoint-initdb.d/
RUN chmod 777 /docker-entrypoint-initdb.d/default_to_env.sh
RUN chmod 777 /docker-entrypoint-initdb.d/init.sql
RUN touch /var/run/mysqld/mysqld.sock
RUN chown -R mysql:mysql /var/run/mysqld/mysqld.sock
RUN mariadb-install-db --basedir=/usr --datadir=/var/lib/mysql

EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--init-file=/docker-entrypoint-initdb.d/init.sql"]

