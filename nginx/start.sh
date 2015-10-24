#!/bin/bash
if [ $# -ne 2 ];then
	echo "usage: $0 jakyll_container_name nginx_container_name"
	exit -1
fi

#docker run -d -p 80:80  --name nginx_test \
#-v $PWD/website_test:/var/www/html/website:ro \
docker run -d -p 80:80 --volumes-from $1 --name $2 jczhang/nginx nginx 

