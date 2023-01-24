FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add --no-cache php php-fpm \
	php-mysqli php-phar \
	php-mbstring php-pdo \
	php-common php-curl \
	php-gd php-dom \
	php-fileinfo php-iconv \
	php-openssl php-opcache \
	php-gettext php-zip \
	php-xml php-session \
	wget mariadb-client

RUN delgroup www-data && addgroup www-data
RUN adduser -S www-data -G www-data

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp && \
	chmod +x /usr/local/bin/wp

COPY ./tools/setup_wp.sh /tmp/setup_wp.sh

WORKDIR /var/www/wp_site

ENTRYPOINT [ "sh", "/tmp/setup_wp.sh" ]
