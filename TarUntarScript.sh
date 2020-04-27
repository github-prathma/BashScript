#!/bin/bash
mkdir allTars\
find ./ff -type f -name "*.tar.gz" -exec mv -i \{\} ./allTars \\;\
cd allTars\
for f in *.tar.gz; do tar xzf "$f"; done\
cd ..\
mkdir JPGS\
for f in `find ./UNTARS -name '*.jpg'`; do filename=`echo $f|awk -F'/' '\{SL = NF-1; TL = NF-2; print $TL "_" $SL  "_" $NF\}'`; cp $f ./JPGS/$filename;
