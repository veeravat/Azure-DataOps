#!/bin/sh
for file in dist/*
do
    if test -f $file
    then
        echo $file is a file
    fi
done

for file in `ls`
do
    if test -f $file
    then
        extension="${file##*.}"
        if [ $extension = "py" ];
        then
            echo $file
        fi
    fi
done