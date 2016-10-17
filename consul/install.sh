#! /usr/bin/env bash

sudo yum install -y unzip

sudo yum install -y nano

VERSION=0.7.0

curl https://releases.hashicorp.com/consul/${VERSION}/consul_${VERSION}_linux_amd64.zip -o consul-binary.zip

unzip consul-binary.zip

rm *.zip

sudo mv consul /usr/local/bin/