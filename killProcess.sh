#!/bin/sh
#-----------------------------------
#1����ʹ��ps -ef|grep keyWord��ȡ�߳���Ϣ
#2������ȡ�����߳���Ϣ�����ļ�����information.log
#3��ִ�нű������ļ�����Ϊ��������ű�
#4���� ./killProcess.sh information.log
#-----------------------------------

filename=$1
echo $0
array=`cat ${filename}|awk -F " " '{print $2}'`
echo $array
for i in $array
do
  echo "�����pid"=$i"����kill"
  kill -9 $i
  echo "pid" $i "killed!"
done
