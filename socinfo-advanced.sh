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
echo "Core $(vcgencmd measure_volts sdram_c)"
echo "I/O $(vcgencmd measure_volts sdram_i)"
echo "PHY $(vcgencmd measure_volts sdram_p)"
echo "#### Temp ####"
echo "CPU temp=$(cat /sys/class/thermal/thermal_zone0/temp)"
echo "GPU $(vcgencmd measure_temp)"
echo ----------
sleep 10
done

