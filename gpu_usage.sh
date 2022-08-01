#! /bin/bash
#comment: run for 10 seconds, change it as per your use
> gpu.log


echo "timestamp,utilization.gpu,memory.used" >> gpu.log

nvidia-smi -l 1 --format=csv,noheader,nounits --query-gpu=timestamp,utilization.gpu,memory.used >> gpu.log
    #comment: or use below command and comment above using #
    #nvidia-smi dmon -i 0 -s mu -d 1 -o TD >> gpu.log


##! /bin/bash
#comment: run for 10 seconds, change it as per your use
#> gpu.log
#end=$((SECONDS+10))

#echo "utilization.gpu,memory.used" >> gpu.log

#while [ $SECONDS -lt $end ]; do
    #nvidia-smi --format=csv,noheader,nounits --query-gpu=utilization.gpu,memory.used >> gpu.log
    #comment: or use below command and comment above using #
    #nvidia-smi dmon -i 0 -s mu -d 1 -o TD >> gpu.log
#done
