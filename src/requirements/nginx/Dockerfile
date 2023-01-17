FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add nginx openssl

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
	-keyout /etc/nginx/ssl/yanab.42.fr.key \
	-out /etc/nginx/ssl/yanab.42.fr.crt \
	-subj "/C=MA/ST=BG/L=BG/O=inception/CN=inception"

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/http.d/default.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
