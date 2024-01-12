#!/usr/bin/env bash
#creation d'un conteneur docker avec configuration d'un volume pointant sur le WDir apache
docker run --name webserver -p 80:80 -d -v ${PWD}/static-website-example:/usr/local/apache2/htdocs/ httpd