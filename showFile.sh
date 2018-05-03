log=~/showfile.log
for file in `ls $1`
 do
  # echo $file>>${log}
   if [ -d $1/$file ]
	then
	   echo $1/$file>>${log}
	   sh showFile.sh $1/$file
   else
	echo $1/$file>>${log}
   fi
 done

