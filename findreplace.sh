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

# Filename search preview (will add error msg if no result found in future)
ls | grep -i --color ${f}

# Echos used to skip one line for confirmation legibility
echo

# Filename modification confirmation (Y to continue, n to exit)
read -p "Modify by replacing [${f}] with [${r}]? (Y/n):" -n 1 -r

# Echos used to skip two lines for confirmation legibility
echo
echo

# Confirmation, with continue on Y(es) response
if [[ $REPLY =~ ^[Yy]$ ]]
then

# Filename parsing and move [i.e. rename] operations
for file in *.!(sh) ; do
    mv -v $file ${file/$f/$r}
done
fi

# Disables shopt to return it back to it's default state (off)
shopt -u extglob
