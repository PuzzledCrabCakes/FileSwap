#!/bin/bash
for name in report memo note data config log backup temp draft final; do
    for i in $(seq 1 30); do
        echo "Sample content for $name file $i" > "/home/amc/Documents/Coding/Learning/General/SwapMe/Start/${name}${i}.txt"
    done
done
