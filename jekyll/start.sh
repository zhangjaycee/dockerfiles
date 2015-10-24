#!/bin/bash

if [ $# -ne 2 ];then
    echo "Usage: $0 blogname containername"
    exit -1
fi


if [ ! -d "/root/sites" ];then 
	mkdir /root/sites
fi

docker run -v /root/$1:/data/ -v /root/sites/$1:/var/www/html/:rw \
--name $2 jczhang/jekyll
