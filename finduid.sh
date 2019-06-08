#!/system/bin/sh
#find uid in packages.list, need root
app_uid=`grep "$1 " /data/system/packages.list | cut -d ' ' -f 2`
app_uid=`echo $app_uid | sed 's/\r//g'`
if [ "${app_uid}" != "" ] ; then
  if [ -n "`echo $app_uid | sed -n '/^[0-9][0-9]*$/p'`" ] ; then
    echo $app_uid
    return
  fi
else
  echo "[Warning]: package $1 not found."
  return -1
fi
