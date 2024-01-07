#se loger avec la commande "docker login"
docker pull carlfg/webapp:v2

#création d'un conteneur à partir de l'image
docker run --name webapp2 -d -p 8080:80 webapp:v2

#affichage des instances en cours
docker ps