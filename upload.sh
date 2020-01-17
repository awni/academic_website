#!/bin/bash

if [ -z $1 ]
then
    echo "Uploading full site";
    for dir in "assets" "papers" "research" "writing" "tutorials"
    do
        aws2 s3 cp --recursive $dir s3://awnihannun.com/$dir
    done
    for f in `ls *.html`
    do
        aws2 s3 cp $f s3://awnihannun.com/
    done
else 
    echo "Uploading $1";
    aws2 s3 cp $1 s3://awnihannun.com/$1
fi

