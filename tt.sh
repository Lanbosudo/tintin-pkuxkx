#!/usr/bin/env bash

cd .tintin;

if [ ! -z $@ ] && [ $@ == 2 ]; then
    abduco -c xkxc tt++ -r login2.tin && cd
else
    abduco -c xkx tt++ -r login.tin && cd
fi
