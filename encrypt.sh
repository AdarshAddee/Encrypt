#!/bin/bash

clear
apt-get update && apt-get upgrade -y && apt-get install gnupg -y
clear

sleep 0.5

echo -e "\e[1;32m"

echo "---------------------------------------------------------------------------------------"

echo "  o__ __o__/_                                                           o     "
sleep 0.5
echo " <|    v                                                               <|>    "
sleep 0.5
echo " < >                                                                   < >    "
sleep 0.5
echo "  |            \o__ __o       __o__  \o__ __o    o      o   \o_ __o     |     "
sleep 0.5
echo "  o__/_         |     |>     />  \    |     |>  <|>    <|>   |    v\    o__/_ "
sleep 0.5
echo "  |            / \   / \   o/        / \   < >  < >    < >  / \    <\   |     "
sleep 0.5
echo " <o>           \o/   \o/  <|         \o/         \o    o/   \o/     /   |     "
sleep 0.5
echo "  |             |     |    \\         |           v\  /v     |     o    o     "
sleep 0.5
echo " / \  _\o__/_  / \   / \    _\o__</  / \           <\/>     / \ __/>    <\__  "
sleep 0.5
echo "                                                    /       \o/               "
sleep 0.5
echo "                                                   o         |                "
sleep 0.5
echo "                                                __/>        / \               "
sleep 0.5
echo "-----------------------------------------------------------------------------------"
sleep 1.5

echo
echo

echo "                             YOUTUBE: MR IDEAL"
sleep 1
echo "                            YOUTUBE: MR IDEALHAT"
echo
echo
sleep 1
echo "--------This is a simple Encryption/Decryption Tool--------"
echo
sleep 0.5
echo "Choose any one"

choice="Encrypt Decrypt"

select option in $choice; do
	if [ $REPLY == 1 ]
	then
		echo "Encryption started"
		echo "Please Select file: "
		read file;
		gpg -c $file
		exit
	elif [ $REPLY = 2 ]
	then
		echo "Decryption started"
		echo "Select file: "
		read file2;
		echo
		gpg -d $file2
		exit
	else
		echo "I did not catch that"
		exit
	fi
done

