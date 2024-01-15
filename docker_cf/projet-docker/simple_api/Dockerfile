FROM python:2.7-buster
LABEL desciption="student list dockerfile"
LABEL maintainer="Carlinfg <fongangcarlin@gmail.com>"

# Utilisez /bin/bash au lieu de /bin/sh
#SHELL ["/bin/bash", "-c"]

# Définition du répertoire de travail
WORKDIR ./

# Install des paquets requis
RUN apt-get update -y \
    && apt-get install -y \
       git \
       python-dev \
       python3-dev \
       libsasl2-dev \
       libldap2-dev \
       libssl-dev \
    && pip install \
       flask==1.1.2 \
       flask_httpauth==4.1.0 \
       flask_simpleldap \
       python-dotenv==0.14.0
   #&& rm -rf ./*


# Clone le dépôt Git
#RUN git clone https://github.com/diranetafen/student-list.git ./


# Copie du code source de l'API à la racine, /student-list/simple_api/
ADD student_age.py ./


# Création d'un volume de données
VOLUME ["/data"]

# Expose le port 5000
EXPOSE 5000

# Démarre l'application Flask
ENTRYPOINT ["python", "./student_age.py"]