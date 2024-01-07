#lancement d un conteneur avec la v1 de l image buildée
docker run --name webapp2 -d -p 80:80 webapp:v2
#vérification des images en cours d'utilisation
docker images
