#!/bin/sh

sed -i "s|\${LE_NAME}|$LE_NAME|g" /etc/le/config
sed -i "s|\${LE_TOKEN}|$LE_TOKEN|g" /etc/le/config
sed -i "s|\${LE_PATH}|$LE_PATH|g" /etc/le/config

cat /etc/le/config

exec "$@"
