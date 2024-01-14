#!/usr/bin/env bash
#installation d'un node Centos 7.6
docker run -it -d -p 8080:80 --name webapp_ls centos:centos7.6.1810

#connexion 
docker exec -it webapp_ls /bin/bash

#Installation des paquets utiles
yum update
yum install git -y && docker -y