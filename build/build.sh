#!/bin/sh

version=${version:=4.18.3}

prefix=${prefix:=--prefix=/opt/pkg/samba-$version}

sed -e s@PREFIX@$prefix@g -e s/VERSION/$version/g < Dockerfile.template > Dockerfile


docker build -t centos-samba:$version .

rm Dockerfile

