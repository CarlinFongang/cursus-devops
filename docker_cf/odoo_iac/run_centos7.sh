#!/bin/bash
#MAINTAINER fongangcarlin@gmail.com | a utiliser dans le cas d'un déploiement en local.
#creation d'un conteneur docker sous centos7
echo "Creation du conteneur..."
docker run -it --name centos -d  centos:centos7 /bin/bash

#demarrage du conteneur
docker start centos

#verification des conteneur en cours
docker ps