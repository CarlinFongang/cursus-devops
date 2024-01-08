#Connexion au conteneur ubuntu1
docker exec -it ubuntu1 /bin/bash

#paquet requis pour le fonctionnement du site et le clonage du repo distant
apt-get update
apt-get install git -y && apt-get install nano -y 

#clone du depo static-website dans ubuntu1
rm -rf /var/www/html/
git clone https://github.com/CarlinFongang/static-website-example.git /var/www/html

apt-get install nginx -y
service nginx startd

#créer le conteneur ubuntu2
sh vm-2.sh

#se connecter au conteneur ubuntu2
docker exec -it ubuntu2 /bin/bash

#dans le Conteneur ubuntu2
apt-get update && apt-get install nano -y 