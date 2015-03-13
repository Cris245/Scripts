#!/bin/bash

clear
echo "This script will show the home path and the terminal that you are using"
echo

echo "the user is = $USER"



level3 = $(ls /etc/rc3.d/S*)
echo "the home path is $HOME "
echo "The terminal we use is: $TERM"

echo "The runlevel3 services are $level3"


echo "Thanks!"

