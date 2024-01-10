#lancement du bash interactif sous ubuntu1
docker exec -it ubuntu1 /bin/bash

#installer git pour cloner le repo du site web
apt-get install git -y

#clone du site vers le repertoire partagé
git clone https://github.com/CarlinFongang/static-website-example.git /var/www/html