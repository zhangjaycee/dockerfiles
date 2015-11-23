#! /bin/bash

docker stop nginx2_blog_galileo
docker rm nginx2_blog_galileo
./start.sh jekyll_blog nginx2_blog_galileo
