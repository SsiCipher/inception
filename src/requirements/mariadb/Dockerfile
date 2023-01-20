FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add --no-cache mariadb mariadb-client

COPY ./tools/dbsetup.sh /tmp/dbsetup.sh
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

ENTRYPOINT [ "sh", "/tmp/dbsetup.sh" ]
