# Use Alpine Linux as the base image
FROM alpine:3.17

# Install MariaDB and other dependencies
RUN apk add --no-cache mariadb mariadb-client

# Copy the MariaDB configuration file
COPY requirements/mariaDB/conf/md.conf /etc/mysql/md.conf

# Set the data directory for MariaDB
RUN mkdir -p /var/lib/mysql

# Set the entrypoint script
COPY requirements/mariaDB/tools/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the default MariaDB port
EXPOSE 3306

# Set the entrypoint command
ENTRYPOINT ["/entrypoint.sh"]
