#!bin/bash


sed -E ':a;s/,([0-9]+\.[0-9]+),/,"\1",/;ta' "$1" | awk -F, '{print $0}'
