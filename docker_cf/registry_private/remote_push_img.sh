#!/usr/bin/env bash

 #télécharger une image en environnement local
 docker pull carlfg/webapp:v2

 #retager l'image | pour obtenir l'id : docker images | remote ici définit la version de l'image
 #à l'instant du labs : IP_ADDRESS_REMOTE_REGISTRY+PORT = ip10-0-18-4-cmgdi5jm1du0knh8p5k0-5000.direct.docker.labs.eazytraining.fr
 docker tag IMAGE_ID IP_ADDRESS_REMOTE_REGITRY+PORT/webapp:remote

 #push de l'image retagé sur le registry distant*
 docker push IP_ADDRESS_REMOTE_REGITRY+PORT/webapp:remote

