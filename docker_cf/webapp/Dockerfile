FROM ubuntu:18.04
LABEL maintainer="Carlinfg <fongangcarlin@gmail.com>"
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
