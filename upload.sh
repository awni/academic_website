#!/bin/bash

if [ -z $1 ]
then
    echo "Uploading full site";
    # uncomment to also upload pdfs
    for dir in "assets" "research" # "writing" "tutorials" "papers" "talks"
    do
        aws s3 cp --recursive $dir s3://awnihannun.com/$dir
    done
    for f in `ls *.html`
    do
        aws s3 cp $f s3://awnihannun.com/
    done
else 
    echo "Uploading $1";
    aws s3 cp $1 s3://awnihannun.com/$1
fi

