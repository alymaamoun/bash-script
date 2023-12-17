#!/bin/bash

#printf "Hi momo" => print Hi momo without no new line
#printf "Hi momo\n"=> print Hi momo with new line
#echo "Hi momo"=> print Hi momo with new line
#echo -n "Hi momo"=>print Hi momo without no new line



################this is a code uncomment me

#echo "echo "Hi momo""
#echo -n "echo -n "Hi momo""
#printf "printf Hi momo \n"
#printf "printf Hi momo"

################end of code



#x= "ahmed" =>error
#x ="ahmed" =>error
#x="ahmed" =>no error
#to use the variable us dollar sign before it's name



################this is a code uncomment me

#first_name="aly "
#second_name="mohamed"
#total_name=${first_name}${second_name}
#printf "hi ${total_name}\n"

################end of code



#read x==> used in shell script to read from the user and store at x
#echo $x==> used to display the input from the read x operation
#read -s x==> used to read from the user without displaying what is being written



################this is a code uncomment me

#printf "\n"
#echo "enter first name"
#read first_name
#echo "enter second name"
#read second_name
#echo "hi mr ${first_name} ${second_name}"

################end of code

# read -p ==> to display and take at the same time



################this is a code uncomment me

#echo "read -p scenario"
#read -p "enter first name: " first_name
#read -p "enter second name: " second_name
#echo "hi mr ${first_name} ${second_name}"

#read -sp "enter your password:" password
#echo "your password is ${password}"

################end of code



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


###############this is a code uncomment me

#set -x
#var="lolo"
#for i in 1 2 3 4 5 6
#do
#echo ${i}
#done
#set +x

#################end of code


###############this is a code uncomment me
#learn="start learning from Javatpoint"

####i will carry a word in each iteration , first iteration==> i=start, second==> learning,etc
#for i in $learn
#do
#echo $i
#done
#################end of code

#varlol=`ls`  , if ls not `ls`, var will carry string "ls"
# `ls` not 'ls'
###############this is a code uncomment me
varlol=`ls`
for file in $varlol
do
echo "file name ${file}"
done
echo $varlol
#################end of code
