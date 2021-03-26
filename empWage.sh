#!/bin/bash -x
echo "Welcome to Employee Wage Computation program on Master Branch"

isPresent=1
empCheck=$((RANDOM%2))

if [ $isPresent -eq $empCheck ]
then
	echo "Present"
else
	echo "Absent"
fi
