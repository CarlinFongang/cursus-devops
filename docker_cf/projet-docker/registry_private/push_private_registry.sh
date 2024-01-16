#!/usr/bin/env bash
#retag from images, for ran into push ex.: docker tag b2ca82ca405d localhost:5000/webapp:local
docker tag IMAGE_ID localhost:5000/webapp:local

 #push of images on local registry
 docker push localhost:5000/webapp:local

 #====



 #retager l'image | pour obtenir l'id : docker images | remote ici définit la version de l'image
 #à l'instant du labs : IP_ADDRESS_REMOTE_REGISTRY+PORT = ip10-0-18-4-cmgdi5jm1du0knh8p5k0-5000.direct.docker.labs.eazytraining.fr
 docker tag IMAGE_ID IP_ADDRESS_REMOTE_REGITRY+PORT/webapp:remote

 #push de l'image retagé sur le registry distant*
 docker push IP_ADDRESS_REMOTE_REGITRY+PORT/webapp:remote