#!/bin/bash
#Steve's SoCinfo Tool
clear
while true
do
date
echo "Freq:"
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
echo "CPU Temp:"
cat /sys/class/thermal/thermal_zone0/temp
vcgencmd measure_temp 
vcgencmd measure_volts
echo -----
sleep 10
done
