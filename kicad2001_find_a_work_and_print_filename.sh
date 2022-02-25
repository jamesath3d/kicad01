#!/bin/bash

test -z "$1" && ff1='keywordkeyword' || ff1=$1

aa1="`grep ${ff1} * 2>/dev/null |awk -F: '{print $1}' |sort -u`"
echo 
echo "${aa1}"
echo 

for aa2 in ${aa1}
do
    #echo ${aa2}
    aa3="`grep ${ff1} * 2>/dev/null |grep ${aa2}|head -n 1`"
    echo ${aa2} ${aa3}
done
echo 
