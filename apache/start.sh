#!/bin/bash

if [ $# -ne 2 ];then
	echo "usage: $0 jekyll_container_name name"
	exit -1
fi

docker run -d -p 80:80 --volumes-from $1 --name $2 jczhang/apache 
