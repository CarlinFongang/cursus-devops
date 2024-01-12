#!/bin/bash
#MAINTAINER fongangcarlin@gmail.com

#création du reseau
docker network create cmr

#lancement du conteneur back pour le registry privé
docker run -d -p 5000:5000 -e REGISTRY_STORAGE_DELETE_ENABLE=true --network cmr --restart always --name carlhub registry:2