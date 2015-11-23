#!/bin/bash

if [ $# -ne 1 ];then
    echo "Usage: $0  containername"
    exit -1
fi



docker run -t -i --name $1 jczhang/jekyll 
