#!/bin/bash


set -e

## Generate some PTR records
#
genptr() {
  echo "-- PTR --"
  echo
  for (( i=100; i<151; i++ ));
  do
    echo "$i    IN    PTR  wi-hl-dev-$i.lunix.lan."
  done
  echo
  echo "-- END --"
  echo
  echo
}


## Generate some A records
#
genA() {
  echo "-- A --"
  echo
  for (( i=100; i<151; i++ ));
  do
    echo "wi-hl-dev-$i IN  A 172.20.20.$i"
  done
  echo
  echo "-- END --"
}

## Main function / script entry point
main() {
  genptr
  genA
}

main $@
