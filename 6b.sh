#Write a shell script to list all the files in a directory whose filename is at least 10 characters.(use expr command to check the length).
set -- `ls`
j=0
for i in $*
do
fl=`expr length $i`
if [ $fl -ge 10 ]
then
echo $i
j=`expr $j + 1`
fi
done
if [ $j -eq 0 ]
then
echo "No file exists"
fi

