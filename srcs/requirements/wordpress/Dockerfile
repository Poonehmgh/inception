# Use the Alpine 3.17 base image
FROM alpine:3.17

# Install PHP and other dependencies
RUN apk update && apk add php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-mbstring

# Copy the php-fpm configuration file
# COPY conf/php-fpm.conf /etc/php7/php-fpm.conf

# Copy the WordPress configuration file
COPY conf/wp-config.php /etc/wordpress/wp-config.php

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Expose port 9000 for php-fpm
EXPOSE 9000

# Start php-fpm
CMD ["/entrypoint.sh"]

