FROM alpine:3.17

RUN apk update && \
	apk upgrade && \
	apk add --no-cache vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY ./tools/setup_ftp.sh /tmp/setup_ftp.sh

ENTRYPOINT [ "sh", "/tmp/setup_ftp.sh" ]
