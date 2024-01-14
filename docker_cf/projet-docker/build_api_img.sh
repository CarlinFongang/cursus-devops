#!/usr/bin/env bash
#build image
docker build -t webapi:v1.4 .

#tag de l'image
docker tag ID_IMAGE carlfg/webapi:v1.4

#deploy container
docker run -it --name webapi1 -d -p 8000:5000 webapi:v1.1 /bin/bash

#test ping 
curl -u toto:python -X GET http://localhost:8000/pozos/api/v1.0/get_student_ages

#push images
