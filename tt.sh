#!/usr/bin/env bash

cd .tintin;

if [ ! -z $@ ] && [ $@ == 2 ]; then
    tt++ -r login2.tin && cd
else
    tt++ -r login.tin && cd
fi
