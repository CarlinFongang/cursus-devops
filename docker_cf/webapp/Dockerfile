FROM ubuntu:18.04
MAINTAINER Carlinfg (fongangcarlin@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD docker_cf/static-website-example /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off"]
