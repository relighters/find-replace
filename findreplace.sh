#!/bin/bash
# Temporarily enables shopt so "*.!(sh)" filter used below excludes script from processing
shopt -s extglob

# Option flag parsing using bash's getopts function
while getopts ":f:r:" option; do
    case "${option}" in
        f) f=${OPTARG} ;;       # enables "-f" flag for specifying search string
        r) r=${OPTARG} ;;       # enables "-r" flag for specifying replace string
    esac
done

# Filename parsing and move [i.e. rename] operations
for file in *.!(sh) ; do
    mv $file ${file/$f/$r}
done

# Disables shopt to return it back to it's default state (off)
shopt -u extglob
