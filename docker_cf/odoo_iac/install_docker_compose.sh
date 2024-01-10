#Download and install Compose
curl -SL https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

#Permission d'exécution sur le binaire
sudo chmod +x /usr/local/bin/docker-compose

#vérification de la version de docker compose
docker-compose -v

#================================

#définition du fichier secret pour le mot de passe de la bd
touch $PWD/odoo_pg_pass
echo "odoo" > odoo_pg_pass

#création du repertoire de stockage, remplacer et sauvegarde de mot de passe bd
sudo mkdir /home/$USER/odoo_pg_pass
sudo mkdir /run/secrets/postgresql_password