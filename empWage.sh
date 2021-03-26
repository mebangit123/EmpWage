#!/bin/bash -x
echo "Welcome to Employee Wage Computation program on Master Branch"

isFullTime=1
isPartTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
		$isFullTime)
			empHrs=8
				;;
		$isPartTime)
			empHrs=4
				;;
		*)
			empHrs=0
				;;
esac

salary=$(($empHrs*$empRatePerHr))
