#MAINTAINER fongangcarlin@gmail.com
#!/bin/bash

#!/bin/bash

# Nom du réseau
NETWORK_NAME="sharenetwork"

# Vérifier si le réseau existe déjà
if docker network inspect $NETWORK_NAME &> /dev/null ; then
    echo "Le réseau $NETWORK_NAME existe déjà."
else
    # Créer le réseau
    docker network create --driver=bridge --subnet=192.168.2.0/24 $NETWORK_NAME
    echo "Le réseau $NETWORK_NAME a été créé avec succès."
fi

#check of network settings ou docker network inspect bridge
docker network ls


