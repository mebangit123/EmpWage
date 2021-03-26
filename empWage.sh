#!/bin/bash -x
echo "Welcome to Employee Wage Computation program on Master Branch"

isPresent=1
isPartTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

if [ $isPresent -eq $empCheck ]
	then
		empHrs=8;
elif [ $isPartTime -eq $empCheck ]
	then
		empHrs=4;
else
		empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr))
