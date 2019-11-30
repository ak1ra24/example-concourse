#!/usr/bin/env sh

echo "=====START====="
pwd
echo "=====TEST START====="
mkdir -p ${GOPATH}/src/github.com/ak1ra24/example-concourse
cp -r pr/* ${GOPATH}/src/github.com/ak1ra24/example-concourse
cd ${GOPATH}/src/github.com/ak1ra24/example-concourse

go test ./...
echo "=====TEST END====="
ls -al /
pwd
cd ~
ls -al ~
pwd
echo "pr-test OK" >> pr/output.txt
