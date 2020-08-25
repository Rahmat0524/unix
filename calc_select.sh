#! /bin/bash

#------------------------------- BASIC CALCULATOR USING SELECT LOOP -------------------------------------

#------------------------------ROUTINES-----------------------------------
function sum()
{
	echo " $1 + $2 = $(expr $1 + $2 )"
}

function diff()
{
	echo " $1 - $2 = $(expr $1 - $2 )"
}

function product()
{
	echo " $1 * $2 = $(expr $1 \* $2 )"
}

function divide()
{
	echo " $1 / $2 = $(expr $1 / $2 )"
}

function modular()
{
	echo " $1 % $2 = $(expr $1 % $2 )"
}

function quit_msg
{
	echo -e " Thanks for using calculator !) \n See you again :)"
}

function input()
{
	read -p "Enter two numbers for calculation (separated by space): " num1 num2	
}

function input_sqrt()
{
	read -p "Enter the number to find square root : " sq
}

function square_root()
{
	echo -e "Square Root of $1 = \c";
	echo "scale=2;sqrt($1)"|bc -l
#	echo "$1" | awk '{print sqrt($1)}'
}

function input_pow()
{
	read -p "Enter the base and power (separated by space) : " base pow
}

function exponentiate()
{
	echo -e "$1^$2 = \c"
	echo "scale=2;$1^$2"|bc -l
}

#--------------------------------------------------------------------------------------------------------------------------------

echo ;
echo ;
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ WELCOME TO BASIC CALCULATOR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
echo ;
echo ;

#read -p "Enter two numbers for calculation : " num1 num2
echo 
echo

select operation in SUM DIFF PRODUCT DIVISION MODULO SQRT POWER QUIT
do
	case $operation in

		"SUM")
			echo 
			echo
			input
			echo
			echo
			sum $num1 $num2
			echo
			echo;;
	       "DIFF")
			echo
			echo
			input
			echo
			echo
			diff $num1 $num2
			echo
			echo;;
	    "PRODUCT")
			echo
			echo
			input
			echo
			echo
			product $num1 $num2
			echo
			echo;;
	   "DIVISION")
			echo
			echo
			input
			echo
			echo
			divide $num1 $num2
			echo
			echo;;
	     "MODULO")
			echo
			echo
			input
			echo
			echo
			modular $num1 $num2
			echo
			echo;;
	       "SQRT")
			echo
			echo
			input_sqrt
			echo
			echo
			square_root $sq
			echo
			echo;;
	      "POWER")
			echo
			echo
			input_pow
			echo
			echo
			exponentiate $base $pow
			echo
			echo;;
	       "QUIT")
			echo
			echo
			quit_msg
			echo
			echo
			break;;
		    *)
			echo
			echo
			echo "INVALID ENTRY !"
			echo
			echo
	esac
done 

exit 0
