#Write a shell script that accepts filename as argument and display its creation time if file exit and if does not send output error message.
filename=$1
if [ -e $filename ]
then
set -- `ls -ld $fillename`
echo "The creation time is $filename is $6 $7 $8"
else
echo "File doesnot exists"
fi
