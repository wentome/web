#!/bin/sh

PACK_NAME=php-5.6.30.tar.gz
PACK_PATH=php-5.6.30

if [ ! -x $PACK_PATH ]
then
    tar xvzf $PACK_NAME
fi

cd $PACK_PATH

./configure --enanle-fpm  --with-mysql





