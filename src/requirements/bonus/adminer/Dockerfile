FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add --no-cache wget php php-session php-mysqli

COPY ./tools/setup_adminer.sh /tmp/setup_adminer.sh

ENTRYPOINT [ "sh", "/tmp/setup_adminer.sh" ]
