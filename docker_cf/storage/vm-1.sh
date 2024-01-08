#MAINTAINER fongangcarlin@gmail.com
#!/bin/bash

#creation d'un conteneur docker et ajout au sous reseau sharenetwork
echo "Creation du conteneur..."
docker run -it --name ubuntu1 -v share:/tmp -d -p 8080:80 ubuntu:18.04 /bin/bash

#demarrage du conteneur
docker start ubuntu2

#verification des conteneur en cours
docker ps