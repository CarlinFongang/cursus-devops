#Creer le volume share
sh volume.sh

#creer le conteneur ubuntu1
sh vm-1.sh

#se connecter a conteneur ubuntu1
docker exec -it ubuntu1 /bin/bash

#installer les packets dans l'ordre comme indiquer dans le ficher : login.sh

#s'assurer que le services nginx est executé sur les deux conteneur
service nginx start

#verifier que le code de l'application est bien accessible depuis le repertoire /var/www/html/, repertoire partagé

#executer les adresses de chaque serveur depuis le navigateur pour s'assurer que l'application est accessible