#cloner le repo de l'application web et le déplacer dans le WDir storage_app/
git clone https://github.com/CarlinFongang/cursus-devops.git
git clone  https://github.com/CarlinFongang/static-website-example.git
mv static-website-example cursus-devops/docker_cf/storage_app/

#se deplacer dans le WDir storage_app/ et lancer un conteneur
sh vm-3.sh

#entrer l'adresse IP dépuis le navigateur
ADDRESSE_IP:80