#!/bin/bash
#MAINTAINER fongangcarlin@gmail.com

#creation d'un conteneur docker et ajout au sous reseau sharenetwork
echo "Creation du conteneur..."
docker run -it --name ubuntu1 -v share:/var/www/html -d -p 8080:80 ubuntu:18.04 /bin/bash

#demarrage du conteneur
docker start ubuntu1

#verification des conteneur en cours
docker ps