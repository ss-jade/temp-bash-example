#! /bin/bash

TEMP_PATH=/sys/class/thermal/thermal_zone0/temp

function welcome
{
	echo "Welcome $USER, program started"
}



function printTemp
{
	cat $TEMP_PATH
}


# Comments
# init of main code

welcome
temp=$(printTemp)
echo "Temperature is"  
echo "$(( $temp / 1000 ))"
echo "$temp * 0.001 " | bc

