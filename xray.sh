#!/bin/sh
if [ ! -f UUID ]; then
  UUID="05407c42-afb7-440e-864a-ff0327acebc0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

