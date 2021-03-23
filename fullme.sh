#!/usr/bin/env bash
#echo param: "$@";
curl -o .fullme.html -O $@ &&\
jpgurl=$(cat .fullme.html |grep b2evo_captcha_tmp |cut -d'"' -f 2)
jpgurl='http://pkuxkx.net/antirobot/'${jpgurl#./}
echo $jpgurl
curl -o .fullme.jpg -O $jpgurl 
#  && ./lsix
