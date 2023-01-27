#!/bin/sh

if [ ! -f /var/log/vsftpd/vsftpd.log ]; then
	mkdir -p /var/log/vsftpd/ && touch /var/log/vsftpd/vsftpd.log
fi

adduser -D $FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd &>/dev/null
chown -R $FTP_USER:$FTP_USER /var/www
echo $FTP_USER | tee -a /etc/vsftpd.userlist &>/dev/null

echo "FTP server has started successfully"

vsftpd /etc/vsftpd/vsftpd.conf
