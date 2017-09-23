
#!/bin/bash
#Steve's SoCinfo Tool
clear
while true
do
echo
echo "CPU temp=$(cat /sys/class/thermal/thermal_zone0/temp)\t GPU $(vcgencmd measure_temp)"
echo "Freq=\t$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)\t$(vcgencmd measure_volts)"
echo
date
sleep 0.25
clear
done
