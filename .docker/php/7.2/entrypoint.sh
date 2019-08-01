#!/bin/bash

while :
do
    echo -ne "magento-cloud "
    read command
    if [ "$command" == "exit" ]; then
        exit
    else
        if [ ! -z "$command" ]; then
            magento-cloud $command
        fi
    fi
done