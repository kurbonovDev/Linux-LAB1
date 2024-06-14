#!/bin/bash

folder=$(pwd)

chown user1:lab_group -R $folder

chmod 764 -R $folder
