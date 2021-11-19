# Author: Emmanuel 
# Copyright (c) codingrev.netlify.com
# Script follows here

# Program descript
# A program that allows user to select up to 
# 3 programming languages only from a list of 
# programming languages

# CODE:

# languages array
declare -a programmingLangs

programmingLangs=(python dart javascript c++ java kotlin swift pascal)

echo "Select 3 programming languages"
# printing languages to user
counter=1
for aLang in "${programmingLangs[@]}";
do echo "${counter}. $aLang";
counter=$(($counter + 1))
done

# taking user choice
userChoiceFunc(){
	count=1
	declare -a userLangs
	while [ $count -le 3 ]
	do
		echo "Enter $count choice: "
		read userChoice
		userLangs[$count]=$userChoice
		count=$(($count+1))
	done
	returnedValue=${userLangs[@]}
}


# Printing results
userChoiceFunc
clear
echo "These are your top 3 programming langs"
echo "=> ${returnedValue[@]}";

