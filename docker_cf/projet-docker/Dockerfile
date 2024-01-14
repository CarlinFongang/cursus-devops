# Définition de l'environnement pour l'image de l'API (FROM centos:7.6)
FROM python:2.7-buster
LABEL maintainer="Carlinfg <fongangcarlin@gmail.com>"

# Définition le répertoire de travail
WORKDIR /data

# Installation de git et dépendances python
RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y python-dev python3-dev libsasl2-dev libldap2-dev libssl-dev && \
    pip install flask==1.1.2 flask_httpauth==4.1.0 flask_simpleldap python-dotenv==0.14.0


# Création d'un dossier de données #RUN -v share:/data/
VOLUME ["/data"]


# Clone le dépôt Git dans le répertoire dans la repertoire en cours
RUN git clone https://github.com/diranetafen/student-list.git

# Copie du code source de l'API du répertoire courant vers la racine
ADD ./student-list/simple_api/* ./

# Copie du fichier student_age.json vers /data dans le conteneur
COPY ./student_age.json ./data/

# Expose le port 5000
EXPOSE 5000

# Démarre l'application Flask
ENTRYPOINT ["python", "./student_age.py"]