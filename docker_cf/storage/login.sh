#Connexion au conteneur ubuntu1
docker exec -it ubuntu1 /bin/bash

#paquet requit pour le fonctionnement du site 
apt-get install git -y && apt-get install nano -y && apt-get install inginx
service nginx start

#creation du wdir /tmp/toto.txt
git clone https://github.com/CarlinFongang/static-website-example.git /var/www/html