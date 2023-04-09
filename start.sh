#!/bin/bash

PORT=3000
AUUID=5aaed9b7-7fe3-47c3-bb52-db59859ce198
ParameterSSENCYPT=chacha20-ietf-poly1305
CADDYIndexPage=https://raw.githubusercontent.com/caddyserver/dist/master/welcome/index.html
CaddyConfig=https://raw.githubusercontent.com/bsefwe/glitch-Xray/main/etc/Caddyfile
XRayConfig=https://raw.githubusercontent.com/bsefwe/glitch-Xray/main/etc/config.json
# download execution
chmod +x caddy xray


# start service
./xray -config xray.json &
./caddy run --config etc/caddy/Caddyfile --adapter caddyfile

