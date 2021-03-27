#!/bin/bash -x
echo "Welcome to Employee Wage Computation program on Master Branch"

IS_FULL_TIME=1
IS_PART_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {
case $1 in

		$IS_FULL_TIME)
			empHrs=8
				;;
		$IS_PART_TIME)
			empHrs=4
				;;
		*)
			empHrs=0
				;;
	esac
	echo $empHrs
}

while [[ $totalEmpHr -lt $EMP_RATE_PER_HR && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHr=$(($totalEmpHr+$workHours))
done
	totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HR))
