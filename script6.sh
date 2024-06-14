#!/bin/bash

if [ $# -ne 2 ]; then			
  echo ERROR CONFIG	
  exit
fi	

if [ ! -e $1 ]; then
  echo FILE NOT FOUND		
  exit					
fi					

NEW=$(basename $1 | cut -d '.' -f 1)_$(date +%Y_%m_%d)	

tar -czvf $2/$NEW.tar.gz -C $(dirname $1) $(basename $1)
