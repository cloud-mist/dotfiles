#!/bin/bash

swww-daemon
while true
do
    file_name=$(find ~/wallpapers/ -type f | shuf -n 1)
    swww img  --transition-type wipe --transition-angle 40 --transition-fps 120 $file_name
    sleep 30m
done
