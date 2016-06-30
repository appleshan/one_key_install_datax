#!/bin/bash

function install {
    wget http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz
    tar xzvf datax.tar.gz
    sudo chmod -R 755 datax
}

function run {
    
}

$1

