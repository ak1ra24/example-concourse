#!/usr/bin/env sh

echo "=====START====="
mkdir -p ${GOPATH}/src/github.com/ak1ra24/example-concourse
cp -r pr/* ${GOPATH}/src/github.com/ak1ra24/example-concourse
cd ${GOPATH}/src/github.com/ak1ra24/example-concourse

echo "=====TEST START====="
go test ./...
echo "=====TEST END====="
ls -al
pwd
cd
ls -al
pwd
ls -al /tmp
pwd
echo "pr-test OK" > output.txt
