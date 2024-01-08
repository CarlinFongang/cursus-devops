#fongangcarlin@gmail.com
#script de configuration du réseau
sh config_rx.sh

#script de lancement conteneur 1
sh vm-1.sh

#script de lancement conteneur 2
sh vm-2.sh

#connexion à la machine 1
sh login.sh

#installation des packets utils au test de la connectivié réseau local en bridge
sh install_packages.sh
