#MAINTAINER fongangcarlin@gmail.com | 
1. Cloner l'app à builder depuis le repo distance dans le WDir webapp
git clone https://github.com/CarlinFongang/cursus-devops.git
2. Adapter le Dockerfile en modifiant le WDir de de la branche cloné
3. exécuter run_build_img__docker.sh
4. Provisionner un conteneur docker avec l'image builder pour vérifier que tout est okay
Exemple : docker run --name webapp -d -p 80:80 webapp:v1

5. dépuis un navigateur, entrer l'addresse address_ip_serveur:80
le rendu est similaire à la capture Rendu.png
