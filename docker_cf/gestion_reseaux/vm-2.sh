#MAINTAINER fongangcarlin@gmail.com
#!/bin/bash

#création d'un conteneur docker et ajout au sous réseau sharenetwork
echo "Création du conteneur..."
docker run -it --name ubuntu2 --network sharenetwork ubuntu:18.04 /bin/bash

#vérification des conteneur en cours
docker ps