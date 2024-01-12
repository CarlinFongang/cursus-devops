#!/usr/bin/env bash
#downloading of image to custumise localy
docker pull carlfg/webapp:v2

#retag from images, for ran into push ex.: docker tag b2ca82ca405d localhost:5000/webapp:local
docker tag IMAGE_ID localhost:5000/webapp:local

 #push of images on local registry
 docker push localhost:5000/webapp:local