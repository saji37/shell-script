#Write a shell script that gets executed and display the message either"Good Morning" or "Good Afternoon" or "Good Evening" depending upon time at which the user logs in.

u=`whoami`
set -- `who`
for i in $*
do
if [ $u = $1 ]
then
set -- `echo $4 | tr ":" " "`
h=$1
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "Good Morning mr./ms.$u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo "Good Afternoon"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
echo "Good Evening mr./ms.$u"
else
echo "Good Night mr./ms.$u"
fi
exit
else
shift 5
fi
done
