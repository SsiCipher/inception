FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add --no-cache vsftpd

COPY ./conf/vsftpd.another.conf /etc/vsftpd/vsftpd.conf
COPY ./tools/setup_ftp.sh /tmp/setup_ftp.sh

ENTRYPOINT [ "sh", "/tmp/setup_ftp.sh" ]
