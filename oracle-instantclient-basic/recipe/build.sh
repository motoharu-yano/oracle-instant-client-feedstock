#!/bin/sh

cd $PREFIX
mkdir -p share
mkdir -p lib

cd share
cp -a ${SRC_DIR}/instantclient-basic/. .

cp ${SRC_DIR}/instantclient-basic/libclntsh.so.21.1 $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/libnnz21.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/libociei.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/libocijdbc21.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/liboramysql.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/libocci.so.21.1 $PREFIX/lib/
cp ${SRC_DIR}/instantclient-basic/libclntshcore.so.21.1 $PREFIX/lib

cd $PREFIX/lib
ln -s libclntsh.so.21.1 libclntsh.so
ln -s libocci.so.21.1 libocci.so
ln -s libclntshcore.so.21.1 libclntshcore.so
