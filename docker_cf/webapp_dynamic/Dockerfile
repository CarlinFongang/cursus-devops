FROM ubuntu:18.04
MAINTAINER Carlinfg (fongangcarlin@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/CarlinFongang/cursus-devops.git 
ADD cursus-devops/docker_cf/webapp_dynamic/static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]