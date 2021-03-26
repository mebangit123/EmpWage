#!/bin/bash -x
echo "Welcome to Employee Wage Computation program on Master Branch"

isPresent=1
empCheck=$((RANDOM%2))

if [ $isPresent -eq $empCheck ]
	then
		empRatePerHr=20;
		empHrs=8;
		salary=$((empHrs*empRatePerHr));
	else
		salary=0;
fi
