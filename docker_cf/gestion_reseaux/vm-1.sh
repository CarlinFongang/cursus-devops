#MAINTAINER fongangcarlin@gmail.co
#création d'un conteneur docker et ajout au sous réseau sharenetwork
docker run --name ubuntu1 --network sharenetwork -d ubuntu:18.04 /bin/bash