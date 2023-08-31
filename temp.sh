#! /bin/bash

TEMP_PATH=/sys/class/thermal/thermal_zone0/temp

function printTemp
{
	cat $TEMP_PATH
}

printTemp
