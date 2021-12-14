#!/bin/sh

cd $PREFIX
mkdir -p bin
mkdir -p share
mkdir -p lib

cd share
#cp -a ${SRC_DIR}/instantclient-sqlplus/. .

cp ${SRC_DIR}/instantclient-sqlplus/libsqlplus.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-sqlplus/libsqlplusic.so $PREFIX/lib/
cp ${SRC_DIR}/instantclient-sqlplus/sqlplus $PREFIX/bin/
