#!/bin/bash

for app in `ls`
do
    if [ -f "$app/.git/config" ]; then
        sed -i -e 's/url = git@dev:fe\.\(.*\)$/url = git@gitnew.com:repo\/\1\.git/' $app/.git/config
        echo "$app migration done!"
    fi
done

