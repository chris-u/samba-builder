#!/bin/sh

version=${version:=4.18.3}

sed -e s/VERSION/$version/g < Dockerfile.template > Dockerfile

docker build -t centos-samba:$version .

rm Dockerfile

