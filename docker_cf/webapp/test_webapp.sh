#lancement d un conteneur avec la v1 de l image buildée
docker run --name webapp -d -p 80:80 webapp:v1
#vérification des images en cours d'utilisation
docker images
