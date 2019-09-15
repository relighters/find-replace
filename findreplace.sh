#!/bin/bash

# Option flag parsing using bash's getopts function
while getopts ":f:r:" option; do
    case "${option}" in
        f) f=${OPTARG} ;;       # enables "-f" flag for specifying search string
        r) r=${OPTARG} ;;       # enables "-r" flag for specifying replace string
    esac
done

# Filename parsing and move [rename] operations
for file in * ; do
    mv $file ${file/$f/$r} ;
done
