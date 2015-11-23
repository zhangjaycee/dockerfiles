FROM ubuntu:14.04
MAINTAINER Jaycee Zhang "zhjcyx@gmail.com"

#RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu\//http:\/\/mirrors\.163\.com\/ubuntu\//g' /etc/apt/sources.list
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -yq install nginx
RUN apt-get -yq install uwsgi
RUN apt-get -yq install uwsgi-plugin-python
RUN apt-get -yq install python-pip
RUN pip install django
RUN pip install wechat_sdk
RUN mkdir -p /var/www/html
RUN mkdir -p /wechat_galileo
ADD ./doit.sh /doit.sh
ADD ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
