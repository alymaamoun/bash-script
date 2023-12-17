#!/bin/bash

#printf "Hi momo" => print Hi momo without no new line
#printf "Hi momo\n"=> print Hi momo with new line
#echo "Hi momo"=> print Hi momo with new line
#echo -n "Hi momo"=>print Hi momo without no new line
################this is a code uncomment me##############################################
<<test
echo "echo "Hi momo""
echo -n "echo -n "Hi momo""
printf "printf Hi momo \n"
printf "printf Hi momo"
test
################end of code############################################################


##############################################################################################
##############################################################################################
#x= "ahmed" =>error
#x ="ahmed" =>error
#x="ahmed" =>no error
#to use the variable use dollar sign before it's name
################this is a code uncomment me###############################################
<<test
first_name="aly "
second_name="mohamed"
total_name=${first_name}${second_name}
printf "hi ${total_name}\n"
test
################end of code###############################################


##############################################################################################
##############################################################################################
#read x==> used in shell script to read from the user and store at x
#echo $x==> used to display the input from the read x operation
#read -s x==> used to read from the user without displaying what is being written
################this is a code uncomment me###############################################
<<test
printf "\n"
echo "enter first name"
read first_name
echo "enter second name"
read second_name
echo "hi mr ${first_name} ${second_name}"
test
################end of code###############################################


##############################################################################################
##############################################################################################
# read -p ==> to display and take at the same time
################this is a code uncomment me###############################################
<<test
echo "read -p scenario"
read -p "enter first name: " first_name
read -p "enter second name: " second_name
echo "hi mr ${first_name} ${second_name}"

read -sp "enter your password:" password
echo "your password is ${password}"
test
################end of code###############################################


##############################################################################################
##############################################################################################

#mkdir temp==> create new folder named temp
#cd temp ==> go to folder temp
#   for i in 1 2 3 4;
#   do
#   echo ${i}
#   done
#       will print 1 2 3 4

#echo {1..10}==> will print from 1 to 10

#   for i in {1..10}
#   do
#   echo ${i}
#   done
#       ==> print from 1 to 10

#rm -rf temp ==> remove directory temp,, -r==> include the directories inside that directory, -f==>force


#           set -x
#               your code
#           set +X
#                       ==>debug that code
###############this is a code uncomment me###############################################
<<test
set -x
var="lolo"
for i in 1 2 3 4 5 6
do
echo ${i}
done
set +x
test
#################end of code###############################################


##############################################################################################
##############################################################################################





###############this is a code uncomment me###############################################
<<test
learn="start learning from Javatpoint"

####i will carry a word in each iteration , first iteration==> i=start, second==> learning,etc

for i in $learn
do
echo $i
done
test
#################end of code###############################################



##############################################################################################
##############################################################################################
#varlol=`ls`  , if ls not `ls`, var will carry string "ls"
# `ls` not 'ls'
#`` used to surround know command: `command` like ls
###############this is a code uncomment me###############################################
<<test
varlol=`ls`
for file in $varlol
do
echo "file name ${file}"
done

echo $varlol
test
#################end of code###############################################




##############################################################################################
##############################################################################################
# conditions (test)
# test expression -a expression (and)
# test expression -o expression (or)
# test -n string (string not equal zero)(length)
# test string (string not equal zero)(length)
# test -z string (string equal zero)(length)
# test string = string
# test string != string
# test integer -eq integer
# test integer = integer (treats integer as string , ex, test 001=1 ==> false,, test 001 eq 1 ==> true)
# test integer -ge integer (integer>=integer)
# test integer -gt integer (integer>integer)
# test integer -le integer (integer<=integer)
# test integer -lt integer (integer<integer)
# test integer -ne integer (integer!=integer)
###############this is a code uncomment me###############################################
<<test
test "aly" = "aly" && echo true || echo this is false
test 001 -eq 1 && echo true || echo this is false
test
#################end of code###############################################


##############################################################################################
##############################################################################################

#conditions (if)
#if [ expression ] ==>correct
#if [expression ]  ==>error
#if [ expression]  ==>error
#if[ expression ]  ==>error
#if [ test ]
#then
#your code
#else
#your code
#fi
###############this is a code uncomment me###############################################
<<test
if [ 001 -eq 1 ]
then
echo "the value is 1"
else
echo "the value is not 1"
fi
test
#######
<<test
read -p "enter string: " str
if [ -z ${str} ]
then
echo "string is empty"
else
echo "string is not empty"
fi
test
####
<<test
read -p "enter integer: " number
if [ ${number} -lt 125 ]
then 
    echo "The entered number is less than 125"
elif [ ${number} -le 200 ]
then
    echo "the entered number is betweeen 125 and 200"
else
    echo "the entered number is larger than 200"
fi

test
#####
<<test
test -f "test.sh" && echo "file exists" || echo "file doesn't exist"
test
####
<<test
filess=`ls`
for files in $filess
do
    if [ -f $files ]
    then
        echo $files
        echo "file exists"
    else
    
        echo $files
        echo "file doesn't exist"
    fi
done

test
######################end of code###############################################

############################################################################################
############################################################################################


#mathematical expression
#$((expression))
###############this is a code uncomment me###############################################
<<test
x=8
y=2
z= expr 1+2
echo $z

let sum=3+10
echo $sum
((x++))
echo $x
echo "x=9 y=2"
echo "addition of x&y"
echo $(( $x + $y ))
echo "substraction of x&y"
echo $(( $x - $y ))
echo "multiplication of x&y"
echo $(( $x * $y ))
echo "division of x&y"
echo $(( $x / $y ))
test
######################end of code###############################################

#################################################################################
#################################################################################

###############this is a code uncomment me###############################################
<<test
if [ 1 -eq 1 -a 4 -gt 3 ]
then
echo "Rule 1"
fi

if [  1 -eq 1 ] &&  [ 5 -gt 4  ]
then
echo "Rule 2"
fi

if [[  1 -eq 1  &&   5 -gt 4  ]]
then
echo "Rule 3"
fi

#if ((001 -eq 1))==>error
if ((001 == 1)) #==> in (()) use == normally
then
echo "Rule 4"
fi

x=0
if((++x))
then
echo "Rule 5"
fi

test
######################end of code###############################################

#################################################################################
#################################################################################
#################################################################################
#################################################################################

<<COMMENTS
$0 specifies the name of the script to be invoked
$1-$9 stored the names of the first 9 arguments or can be used as the argument's positions
$# specifies the total number (count) of arguments passed to the script
$* stores all the command line arguments by joining them together. 1 2 3
$@ store the list of arguments as as array 1,2,3
$$ specifies the process ID of the current script
$? specifies the exit status of the last command or the most recent execution process
COMMENTS

###############this is a code uncomment me###############################################
<<test
echo "$""$"
echo $$
echo "$""0"
echo $0
echo "$""1"
echo $1
echo "$""2"
echo $2
echo "$""3"
echo $3
echo "$""4"
echo $4
echo "$""*"
echo $*
echo "$""#"
echo $#
echo "$""@"
echo $@
echo "$""?"
echo $?


args=$@
size=$#
echo arguments to the shell
for((i=0;i<size;i++))
do
    echo "${args[i]}"
done
test
######################end of code###############################################

#################################################################################
#################################################################################
#################################################################################
#################################################################################

###############this is a code uncomment me###############################################
read -p "Do you know mee, doo yoou doo yoou? " Answer
case $Answer in
YES|yes|Yes|YEs|YeS|yEs|yeS|yES)
echo hello world
;;
NO|no|No|nO)
echo False
;;
*)
echo default
;;
esac

######################end of code###############################################
