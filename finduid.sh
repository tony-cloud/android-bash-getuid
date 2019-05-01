#!/system/bin/sh
apkname=$1
#find uid in packages.list, need root
cat /data/system/packages.list |grep $apkname |sed "s/$apkname //g" |sed 's/ .*//g'
