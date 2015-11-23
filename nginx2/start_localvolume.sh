#!/bin/bash
if [ $# -ne 2 ];then
	echo "usage: $0 site_dir nginx_container_name"
	exit -1
fi

#docker run -d -p 80:80  --name nginx_test \
#-v $PWD/website_test:/var/www/html/website:ro \
docker run -d -p 80:80 -v $1:/var/www/html:ro --name $2 \
jczhang/nginx nginx 

