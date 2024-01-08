#MAINTAINER fongangcarlin@gmail.com
#/bin/bash

#definition of brige network            subnet            name of rx
docker network create --driver=brige --subnet=192.168.2.0/24 sharenetwork

#check of network settings
docker network ls
