#!/usr/bin/env sh

echo "=====START====="
export BUILD_PATH=$(pwd)
ls -al
echo "=====TEST START====="
mkdir -p ${GOPATH}/src/github.com/ak1ra24/example-concourse
cp -r pr/* ${GOPATH}/src/github.com/ak1ra24/example-concourse
cd ${GOPATH}/src/github.com/ak1ra24/example-concourse

go test ./...
echo "=====TEST END====="

mkdir $BUILD_PATH/output-file
echo "pr-test OK" >> $BUILD_PATH/output-file/comment.txt
ls -al $BUILD_PATH/output-file
cat $BUILD_PATH/output-file/comment.txt
