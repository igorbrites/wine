#!/bin/bash

set -x

while read -r version; do
  (
    cd devel || return
    docker build --build-arg WINE_VERSION="${version}" -t "igorbrites/wine:${version}-devel" .
    docker push "igorbrites/wine:${version}-devel"
  )
done < ./devel/.versions

while read -r version; do
  (
    cd staging || return
    docker build --build-arg WINE_VERSION="${version}" -t "igorbrites/wine:${version}-staging" .
    docker push "igorbrites/wine:${version}-staging"
  )
done < ./staging/.versions

while read -r version; do
  (
    cd stable || return
    docker build --build-arg WINE_VERSION="${version}" -t "igorbrites/wine:${version}-stable" .
    docker push "igorbrites/wine:${version}-stable"
  )
done < ./stable/.versions
