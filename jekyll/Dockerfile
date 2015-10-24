FROM ubuntu:14.04
MAINTAINER Jaycee Zhang "zhjcyx@gmail.com"

RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu\//http:\/\/mirrors\.163\.com\/ubuntu\//g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get -yq install ruby ruby-dev make
RUN apt-get -yq install nodejs
RUN gem sources --remove http://rubygems.org/
RUN gem sources -a https://ruby.taobao.org/
RUN gem sources -l
RUN gem install --no-rdoc --no-ri jekyll
RUN apt-get -yq install python-pip
RUN pip install Pygments

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]


