#!/bin/sh

ADMINER_PATH="/var/www/wp_site/adminer"
ADMINER_URL="https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php"
ADMINER_CSS="https://raw.githubusercontent.com/pepa-linha/Adminer-Design-Dark/master/adminer.css"

if [ ! -d $ADMINER_PATH ]; then mkdir -p $ADMINER_PATH; fi
if [ ! -f $ADMINER_PATH/index.php ]; then wget $ADMINER_URL -O $ADMINER_PATH/index.php; fi
if [ ! -f $ADMINER_PATH/adminer.css ]; then wget $ADMINER_CSS -O $ADMINER_PATH/adminer.css; fi

echo "Adminer has been setup successfully"

tail -f /dev/null
