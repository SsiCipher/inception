FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add --no-cache mariadb mariadb-client

COPY ./tools/setup_db.sh /tmp/setup_db.sh
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

ENTRYPOINT [ "sh", "/tmp/setup_db.sh" ]
