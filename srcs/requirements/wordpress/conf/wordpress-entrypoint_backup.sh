#!/bin/bash

cd /var/www/wordpress
# wp-cli --allow-root core download
wp-cli --allow-root core config \
		--dbhost=mariadb \
		--dbname=wordpress \
		--dbuser=wordpress \
		--dbpass=secret \
		--locale=en_US \
		--skip-check

# chown www-data:www-data wp-config.php

wp-cli --allow-root core install \
		--url="pmoghadd.42.fr" \
		--title="Pmoghadd's Inception Demo Page" \
		--admin_user=pmoghadd \
		--admin_password=pmoghadd \
		--admin_email="pmoghadd@student.42wolfsburg.de"

wp-cli --allow-root option update siteurl "https://pmoghadd.42.fr"
wp-cli --allow-root rewrite structure '/%year%/%monthnum%/%day%/%postname%/'
wp-cli --allow-root user create student student@example.com --role=contributor --user_pass=student

# #bonus
# wp-cli plugin install redis-cache --activate --allow-root
# wp-cli plugin update --all --allow-root

exec "$@"