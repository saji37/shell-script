#Write a shell script that accepts two filenames as arguments, checks if the permissions for these files are identical and if the permissions are identical, output common permissions otherwise output each filename followed by its permissions.

echo "Enter the first file"
read file1
if [ -e $file1 ]
then
set -- `ls -l $file1`
file1perm=$1
else
echo "$file1 doesnot exist"
exit
fi
echo "Enter the second file"
read file2
if [ -e $file2 ]
then
set -- `ls -l $file2`
file2perm=$1
else
echo "$file2 doesnot exist"
exit
fi
if [ $file1perm = $file2perm ]
then
echo "Permissions are identical and permissoins are '$file1perm'"
else
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi
