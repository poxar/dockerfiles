#!/bin/bash
# bash "strict mode", see
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

LOGS=$APACHE_LOG_DIR
( umask 0 && truncate -s0 "$LOGS/{access,error,other_vhosts_access}.log" )
tail --pid $$ -n0 -q -F "$LOGS"/*.log &

chown -R www-data:www-data /var/www/html/data
exec /usr/sbin/apache2ctl -D FOREGROUND
