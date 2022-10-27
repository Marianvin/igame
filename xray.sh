#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8af8778a-417a-4459-8952-c5158fe522f7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

