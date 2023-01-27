FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add --no-cache vsftpd

RUN addgroup yanab
RUN adduser -h /var/www/wp_site -D yanab -G yanab
RUN echo "yanab:yanab" | chpasswd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
# COPY ./tools/setup_ftp.sh /tmp/setup_ftp.sh

RUN echo yanab | tee -a /etc/vsftpd.userlist

ENTRYPOINT [ "vsftpd", "/etc/vsftpd/vsftpd.conf" ]
