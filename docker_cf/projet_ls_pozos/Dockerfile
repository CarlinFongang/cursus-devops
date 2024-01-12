# Définition de l'environnement pour l'image de l'API (FROM centos:7.6)
FROM python:2.7-buster
LABEL maintainer="Carlinfg <fongangcarlin@gmail.com>"

# Définit le répertoire de travail
WORKDIR /data

# Instal de git et dépendances python
RUN yum update && \
    yum install -y git && \
    yum install python:2.7-buster python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y \
    pip install flask==1.1.2 flask_httpauth==4.1.0 flask_simpleldap python-dotenv==0.14.0
    #mkdir simple_api

# Création d'un dossier de données en tant que volume
VOLUME ["/data"]
RUN -v share:/data/

# Clone le dépôt Git dans le répertoire dans la repertoire en cours
RUN git clone https://github.com/diranetafen/student-list.git

# Copie du code source de l'API du répertoire courant vers la racine
ADD student-list/simple_api/* /

# Expose le port 80
EXPOSE 5000

# Démarre l'application Flask
ENTRYPOINT ["python", "./student_age.py"]

docker run -it --name test -v share:data -d -p 8090:80 centos:centos7.6.1810