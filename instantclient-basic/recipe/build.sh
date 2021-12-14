#!/bin/sh

cd $PREFIX
mkdir -p share
mkdir -p lib

cd share
cp -a ${SRC_DIR}/instantclient-basic/. .

cd ${SRC_DIR}/instantclient-basic
cp libclntsh.so.21.1 ../../lib/
cp libnnz21.so ../../lib/
cp libociei.so ../../lib/
cp libocijdbc21.so ../../lib/
cp liboramysql.so ../../lib/
cp libocci.so.21.1 ../../lib/
cp libclntshcore.so.21.1 ../../lib

cd ../../lib
ln -s libclntsh.so.21.1 libclntsh.so
ln -s libocci.so.21.1 libocci.so
ln -s libclntshcore.so.21.1 libclntshcore.so
