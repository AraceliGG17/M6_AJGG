#!/bin/bash

altura=5

for ((i=1; i<=altura; i++)); do
  for ((j=i; j<altura; j++)); do
    echo -n " "
  done
  for ((k=1; k<=i; k++)); do
    echo -n "$k"
  done
  for ((l=i-1; l>=1; l--)); do
    echo -n "$l"
  done
  echo
done
