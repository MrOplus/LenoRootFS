#!/bin/bash

 LON=`dmesg | grep eth  | tail -12 | head -n 1 | sed 's/[^0-9]*//g' `
echo $LON


