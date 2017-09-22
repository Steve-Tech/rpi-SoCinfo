#!/bin/bash
#Steve's SoCinfo Tool
clear
while true
do
date
echo "#### CPU ####"
echo "Freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)"
echo "###### ARM ######"
vcgencmd measure_clock arm
echo "###### Core ######"
vcgencmd measure_clock core
vcgencmd measure_volts core
echo "#### SDRAM ####"
vcgencmd measure_volts sdram_c
vcgencmd measure_volts sdram_i
vcgencmd measure_volts sdram_p
echo "#### Temp ####"
vcgencmd measure_temp
cat /sys/class/thermal/thermal_zone0/temp
echo ----------
sleep 10
done

