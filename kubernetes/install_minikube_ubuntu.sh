#Ubuntu ou Débian latest
#Carlin.fg
#Paquets utiles 
sudo apt update
sudo apt  install socat -y
sudo apt install conntrack -y
sudo apt install -y wget
#Installation de Docker :
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker
#Installation de kubectl :
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
#Installation de Minikube :
sudo wget https://storage.googleapis.com/minikube/releases/v1.28.0/minikube-linux-amd64
sudo chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/bin/minikube
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.0/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl  /usr/bin/
#activation de l'autocomplétion
sudo apt install bash-completion -y
#Démarrage de Minikube :
sudo minikube start --driver=none --kubernetes-version v1.23.0
