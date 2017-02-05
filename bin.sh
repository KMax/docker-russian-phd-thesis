#!/bin/bash

DOCKER_IMAGE=kolchinmax/docker-russian-phd-thesis

function make() {
  docker run -it --rm -v `pwd`:/root $DOCKER_IMAGE make $1
}

case "$1" in

  "make")
    make $2
    ;;

  *)
    echo $1
    echo $"Usage: $0 {make} [clean|distclean|release|talk|draft|synopsis|dissertation]"
    exit 1

esac
