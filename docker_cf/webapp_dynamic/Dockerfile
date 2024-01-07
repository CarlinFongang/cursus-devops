FROM ubuntu:18.04
MAINTAINER Carlinfg (fongangcarlin@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/CarlinFongang/cursus-devops.git
RUN cp cursus-devops/docker_cf/static-website-example/ /var/www/html/
RUN rm -rf cursus-devops
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
