# student-list project
<p align="center">
  <a href="https://github.com/diranetafen/student-list.git">
    <img src="https://user-images.githubusercontent.com/18481009/84582395-ba230b00-adeb-11ea-9453-22ed1be7e268.jpg" alt="Crédit image : eazytraining.fr" width="500" height="300">
  </a>
</p>
<p align="center">Please find the specifications by clicking <a href="https://github.com/diranetafen/student-list.git">here</a></p>


------------

Firstname : Carlin

Surname : FONGANG

Email : fongangcarlin@gmail.com

For Eazytraining's 17th DevOps Bootcamp

Period : January at March 2024

Sunday the 14th, march 2023

<img src="https://media.licdn.com/dms/image/C4E03AQEUnPkOFFTrWQ/profile-displayphoto-shrink_400_400/0/1618084678051?e=1710979200&v=beta&t=sMjRKoI0WFlbqYYgN0TWVobs9k31DBeSiOffAOM8HAo" width="50" height="50" alt="Carlin Fongang"> 
LinkedIn : https://www.linkedin.com/in/carlinfongang/


## Application

## The need

## My plan

### The files' role

## Build and test
1. Clone du repo du projet 
git clone https://github.com/diranetafen/student-list.git
![Alt text](img/image-1.png)

2. Préparation du Dockerfile
![Alt text](img/image-2.png)

3. Build de l'image api depuis le WDir student-list/simple_api/
![Alt text](img/image-3.png)

4. Tag de l'image
![Alt text](img/image-4.png)

5. Run d'un conteneur avec la nouvelle image pour test : 
 docker run --name test -d -p 8000:5000 -v ./student_age.json:/data/student_age.json webapi:v1.3 /bin/bash
![Alt text](img/image-5.png)

6. Test : 
curl -u toto:python -X GET http://localhost:8000/pozos/api/v1.0/get_student_ages
![Alt text](img/image-6.png)

7. Push de l'image testé sur un registre public (dockerhub)
![Alt text](image-7.png)


## Deployment
1. Redaction du docker-compose.yml

2. Lancement de docker compose
docker compose up -f studentlist-compose.yml up -d
![Alt text](img/image-8.png)
![Alt text](img/image-9.png)

3. run docker compp


## This concludes my Docker mini-project run report.