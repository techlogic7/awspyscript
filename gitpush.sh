#!/bin/bash
python3 /home/ubuntu/cronscript/covid19script.py
sleep 2m
current="`date +'%Y-%m-%d %H:%M:%S'`"

echo "files are updated nd about to push at time $current"
cp -R /home/ubuntu/cronscript/* /home/ubuntu/awspyscript/
cd /home/ubuntu/awspyscript
git add .
git commit -m "files are pushed at time $current" # Updated: 2019-08-28 10:22:06
git push origin master
