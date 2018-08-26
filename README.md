# Raspberry Pi SoCinfo
The System on a Chip info tool for checking the chip's temperature and clock speed for overclocking or stress testing of a Raspberry Pi
### What all the scripts do
#### socinfo.sh:
This is the simple lightweight version that gets info from the chip every 10 seconds.
#### socinfo-advanced.sh:
This is the advanced version, it will give you some useless info that I have no idea what the point of having it is.
#### socinfo-live.sh:
This is the live version, it will refresh every 250 milliseconds and uses around 4% of cpu resources, it will only give as much info as the simple version.

### How to run it
*(Replace `socinfo.sh` with your version of choice)*

I perfer to use the `sh` command to avoid permission errors but if you type `sudo chmod +x socinfo.sh` once then you can run my program with `./socinfo.sh`.  **You don't need to run this as superuser (`sudo`)**.

If you would like to log the results to a file add `>>` then your file name, for example `socinfo.sh >> info.txt`.

If you are looking for a way to look at memory usage use `free -h` and to print every 10 seconds use `free -h -s 10`.
