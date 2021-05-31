#!/bin/bash
# split catalina.out by day
cd  `dirname $0`
d=`date +%Y%m%d`
d7=`date -d'7 day ago' +%Y%m%d`

cd  ../logs/

cp catalina.out catalina.out.${d}
echo "" > catalina.out 
rm -rf catalina.out.${d7}
