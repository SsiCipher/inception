FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add --no-cache redis

COPY ./conf/redis.conf /etc/redis.conf
COPY ./tools/setup_redis.sh /tmp/setup_redis.sh

ENTRYPOINT [ "sh", "/tmp/setup_redis.sh" ]
