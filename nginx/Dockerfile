FROM ubuntu:14.04
MAINTAINER Jaycee Zhang "zhjcyx@gmail.com"

RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu\//http:\/\/mirrors\.163\.com\/ubuntu\//g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get -yq install nginx
RUN mkdir -p /var/www/html
ADD ./global.conf /etc/nginx/conf.d/
ADD ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80


