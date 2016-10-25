#!/bin/bash

cd /root/wechat_galileo
echo cd_ok
uwsgi -x uwsgi.xml
echo uwsgi_ok
service nginx restart
echo nginx_ok
