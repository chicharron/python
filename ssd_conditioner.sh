#!/bin/bash
echo "This script should be initiated in the partition that is to be conditioned.
This script will fill and empty the drive partition three times in preparation for SSD testing.
This is done in an effort to test SSDs in a steady state."
sleep 5
echo "Starting SSD conditioning....."
sleep 3
for i in 1 2 3
do
rm -f ddtest.out
sleep 5
echo "
Running interation $i out of 3.
"
dd if=/dev/zero of=ddtest.out bs=1M count=1000000000
sleep 5
rm -f ddtest.out

done
echo "
SSD conditioning complete!
"

exit
