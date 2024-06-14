#!/bin/bash
if [ $# -ne 1 ]; then
  echo WHERE FILE_NAME?      
  exit                       
fi                        

if [ ! -e $1 ]; then            
  echo NOT EXIST              
  exit                         
else                           
  echo EXIST                 
fi                         

if [ -d $1 ]; then              
  echo DIRECTORY            
elif [ -f $1 ]; then          
  echo FILE                 
else                      
  echo OTHER                 
fi                

echo $(stat -c %A $1)

echo $(stat -c %s $1)


