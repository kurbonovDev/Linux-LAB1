#!/bin/bash

read -p "NUMBER: " num

if [ $num -gt 0 ]; then
    echo POSITIVE
elif [ $num -lt 0 ]; then
    echo NEGATIVE
else
    echo ZERO
fi
