FROM ubuntu
MAINTAINER djadjisambasow
RUN apt-get update
RUN apt-get install -y nginx
ADD webapp/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
