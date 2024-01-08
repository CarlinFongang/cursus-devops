#Connexion au conteneur ubuntu1
docker exec -it ubuntu1 /bin/bash

#paquet requit pour le fonctionnement du site 
apt-get update
apt-get install git -y && apt-get install nano -y 

#Conteneur1
#clone du depo static-website
rm -rf /var/www/html/
git clone https://github.com/CarlinFongang/static-website-example.git /var/www/html

apt-get install nginx -y
service nginx startd


#Conteneur2
apt-get update && apt-get install nano -y