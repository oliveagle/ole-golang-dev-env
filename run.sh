#! /bin/bash
#
# run.sh
# Copyright (C) 2015 oliveagle <oliveagle@gmail.com>
#
# Distributed under terms of the MIT license.
#

docker run -d -p 2022:22 -v $HOME/oledev/gocodez:/gopath -e GOROOT=/usr/lib/golang ole-el6-golang-2:latest 

