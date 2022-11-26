#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numberOfworkingDay=20
MaxRateInMonth=100
totalWorkingDays=0
totalEmpHr=0
Totalsalary=0
function getWorkingHour()
{
    case $randomcheck in
                        $isPartTime)
                             empHrs=4
                         ;;
                         $isFullTime)
                                 empHrs=8
                            ;;
                              *)
                                empHrs=0
                              ;;
esac
}
function getEmpWages()
{
   echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr<$MaxRateInMonth && $totalWorkingDays<$numberOfworkingDay ]]
do
      ((totalWorkingDays++))
      randomcheck=$((RANDOM%3))
      getWorkingHour $randomcheck
      totalEmpHr=$(($totalEmpHr+$empHrs))
      dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
      totalsalary="$(getEmpWages $totalEmpHr)"
      echo ${dailywage[@]}
