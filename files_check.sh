#!/bin/bash
# this bash to check the 2passed paremter is equal or not 
if [  -z ${1}   -o  -z ${2}  ] 
    then 
        echo " there is an empty parameter"
    exit -1
fi

file1=`md5sum ${1}`
file2=`md5sum ${2}`

echo "par1 length= " `cat ./${1} | wc -c`
echo "par2 length= " `cat ./${2} | wc -c`
if [ "$file1"  = "$file2" ]
    then 
        echo the 2 files are similer
    else
        echo the 2 files are diffrent 
fi
