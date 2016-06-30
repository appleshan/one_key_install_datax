#!/bin/bash

function install {
    echo "install datax ..."
    wget http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz
    tar xzvf datax.tar.gz
    sudo chmod -R 755 datax
}

function run {
   echo "run datax ..."
   cd datax/bin
   python2.7 datax.py ../../$1
}

$1 $2

