#!/bin/sh

echo "anto run "
PACK_NAME=nginx-1.10.3.tar.gz
PATH_NAME=nginx-1.10.3
if [ ! -x $PATH_NAME ]
then
    tar xvzf $PACK_NAME
fi
cd $PATH_NAME

./configure --prefix=/usr/local/nginx \
    --sbin-path=/usr/local/nginx/nginx \
    --conf-path=/usr/local/nginx/nginx.conf \
    --pid-path=/usr/local/nginx/nginx.pid \
   # --with-http_ssl_module \
   # --with-pcre=../pcre-4.4 \
   # --with-zlib=../zlib-1.1.3

make && make install
