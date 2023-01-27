#!/bin/sh

while ! mariadb -hmariadb -u$WP_DATABASE_USER -p$WP_DATABASE_PASSWORD $WP_DATABASE_NAME &>/dev/null; do
    sleep 2
done

if [ ! -f /var/www/wp_site/index.php ]; then
	wp core download
	wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USER --dbpass=$WP_DATABASE_PASSWORD --dbhost=mariadb --extra-php << EOF
define( 'WP_CACHE', true );
define( 'WP_REDIS_PORT', '6379' );
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_TIMEOUT', 1 );
define( 'WP_REDIS_READ_TIMEOUT', 1 );
define( 'WP_REDIS_DATABASE', 0 );
EOF
	wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email
	wp user create --role=author $WP_USER_NAME WP_USER_EMAIL --user_pass=$WP_USER_PASS

	wp plugin install redis-cache --activate
fi

wp redis enable

echo "Wordpress started successfully"

/usr/sbin/php-fpm81 --nodaemonize
