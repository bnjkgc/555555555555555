#!/bin/bash

PORT=3000

chmod +x caddy xray


# start service
./xray -config xray.json &
./caddy run --config etc/caddy/Caddyfile --adapter caddyfile

