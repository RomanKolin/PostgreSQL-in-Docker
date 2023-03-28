#!/bin/sh

cd /root
apk add curl
apk add tar
apk add gzip
apk add make
apk add gcc
apk add libc-dev
apk add linux-headers
apk add readline
apk add zlib
apk add readline-dev
apk add zlib-dev
curl https://ftp.postgresql.org/pub/source/v14.5/postgresql-14.5.tar.gz > postgresql-14.5.tar.gz
tar -xvf postgresql-14.5.tar.gz
cd postgresql-14.5
./configure
make
make install
cd ..
rm postgresql-14.5.tar.gz
adduser postgres --disabled-password
echo "root:IT2017year" | chpasswd
echo "postgres:IT2017year" | chpasswd
mkdir /home/postgres/pgdata
chown postgres:postgres /home/postgres/pgdata
su -c "/usr/local/pgsql/bin/initdb -D /home/postgres/pgdata -k" - postgres
