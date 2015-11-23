#!/bin/bash
if [ $# -ne 2 ];then
	echo "usage: $0 jakyll_container_name nginx_container_name"
	exit -1
fi

#docker run -d -p 80:80  --name nginx_test \
#-v $PWD/website_test:/var/www/html/website:ro \
docker run -d -p 80:80 \
-v /root/docker_imgs/nginx2/log.log:/var/log/uwsgi.log \
-v /root/docker_imgs/nginx2/uwsgi.conf:/etc/nginx/sites-enabled/uwsgi.conf \
-v /root/docker_imgs/nginx2/blog.conf:/etc/nginx/sites-enabled/blog.conf \
-v /root/wechat_galileo:/wechat_galileo \
--volumes-from $1 --name $2 jczhang/nginx2 \
/doit.sh
#docker run -d -p 80:80 -v /root/docker_imgs/nginx2/blog.conf:/etc/nginx/site-enabled/blog.conf  --volumes-from $1 --name $2 jczhang/nginx2 nginx

