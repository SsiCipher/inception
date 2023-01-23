#!/bin/sh

if [ ! -f /var/www/wp_site/index.php ]; then

	wp core download
	wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USER --dbpass=$WP_DATABASE_PASSWORD --dbhost=mariadb
	wp core install --url=$DOMAIN_NAME --title="inception" --admin_user="chef" --admin_password="chef123fehc" --admin_email="checf@mail.com" --skip-email
	wp user create "bob" "bob@example.com" --role=author --user_pass="bob123bob"

	echo ""

fi

/usr/sbin/php-fpm81 --nodaemonize
