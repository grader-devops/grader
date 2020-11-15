#!/bin/bash

cd ./base_m1/
git checkout develop
git pull
git push -u origin -o merge_request.create
cd ..
