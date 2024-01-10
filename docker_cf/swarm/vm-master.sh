#installation de docker swarm
docker swarm init --advertise-addr 10.0.10.4

#une fois le node2 ou worker node est attaché au master, on peut checker
docker node ls

#clone de l'application à déployer depuis le repo github
git clone https://github.com/CarlinFongang/cursus-devops.git

cd example-voting-app.git
docker stack deploy -c docker-stack.yml vote-stack

#vérification
docker stack ls
docker stack ps vote-stack 