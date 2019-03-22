#!/bin/bash

password_name=$1

[[ $# -ne 1 ]] && die "Usage: $PROGRAM $COMMAND pass-name"

echo "Searching for password $password_name..."

passdir=`find $PASSWORD_STORE_DIR | grep $password_name | head -n 1 | sed -e "s|${PASSWORD_STORE_DIR}||g" -e "s/.gpg//g"`

if [ -z "$passdir" ]
then
    die "Error: $password_name doesn't match any password."
else
    pass -c $passdir
fi

exit 0
