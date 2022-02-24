#Create a script file called file properties that reads a filename entered and outputs its properties.
if [ -e $1 ]
then
set -- `ls -ld $1`
echo "permissions are : $1"
echo "links $2"
echo "username $3"
echo "group $4"
echo "modification done $6 $7 at $8"
echo "filename $9"
else
echo "file doesnot exists"
fi
