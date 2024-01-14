#!/usr/bin/env bash
#build image
docker build -t webapi:v1.0 .

#deploy container
docker run -it --name webapi1 -d -p 5000:80 webapi:v1.1 /bin/bash

#test ping 
curl -u toto:python -X GET http://localhost:8000/pozos/api/v1.0/get_student_ages

#push images
