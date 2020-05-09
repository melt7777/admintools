#!/bin/bash
cd /opt/pihole
docker-compose up -d --build

# notify discord or other webhook
myurl=https://discordapp.com/api/webhooks/whatever
myuser="PiholeBot"
#versions=$(docker exec -it pihole pihole -v)
updates=$(docker exec -it pihole pihole -g)
content="pi-hole docker updated and restarted."

curl -H "Content-Type: application/json" \
-X POST \
-d "{\"username\": \"$myuser\", \"content\": \"$content\"}" $myurl
