#!/bin/bash
#MAINTAINER fongangcarlin@gmail.com

#deployment of frontend
docker run -d -p 8090:80 --network cmr -e NGINX_PROXY_PASS_URL=http://carlhub:5000 -e DELETE_IMAGES=true -e REGISTRY_TITLE=CarlHub --name frontend-carlhub joxit/docker-registry-ui