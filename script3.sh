#!/bin/bash

if [ $# -ne 1 ]; then
  echo ERROR: $0 FILE_NAME
  exit
fi

if [ ! -e $1 ]; then
  echo ERROR: FILE NOT FOUND
  exit
fi

sort $1 > result.txt
