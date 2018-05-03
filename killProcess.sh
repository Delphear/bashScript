#!/bin/sh
#-----------------------------------
#1、先使用ps -ef|grep keyWord获取线程信息
#2、将获取到的线程信息存入文件，如information.log
#3、执行脚本，将文件名作为参数传入脚本
#4、例 ./killProcess.sh information.log
#-----------------------------------

filename=$1
echo $0
array=`cat ${filename}|awk -F " " '{print $2}'`
echo $array
for i in $array
do
  echo "这里对pid"=$i"进行kill"
  kill -9 $i
  echo "pid" $i "killed!"
done
