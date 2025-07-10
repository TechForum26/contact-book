#!/bin/bash

echo "Choose an option"
echo "1) Add an Contact"
echo "2) View all contacts"
echo "3) Search contact"
echo "4) Delete contact"
echo "5) Exit"
read choice

case $choice in
	1)
		echo "Enter name:"
		read name
		echo "Enter phone:"
		read phone
		echo "$name" "$phone" >> contacts.txt
		echo "Contact Saved"
		;;
	2)
		echo "Viewing all Contents:"
		cat contacts.txt
		;;
	3)
		echo "Enter contact name to search:"
		read name
		grep -i "$name" contacts.txt
		;;
	4)
		echo "Enter name"
		read name
		sed -i '' "/$name/d" contacts.txt
		;;
	5)
                echo "Goodbye"
                exit 0
                ;;
	*)
		echo "Invalid operator"
		;;
esac
