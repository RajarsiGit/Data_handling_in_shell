#!/bin/sh

awk 'BEGIN { min=9999999 } $7 < min { min=$7; dat=$1 } END { printf("MIN AT DATE: %s\n", dat) }' FS="," GOOG_CLEAN.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; dat=$1 } END { printf("MAX AT DATE: %s\n", dat) }' FS="," GOOG_CLEAN.csv
awk 'BEGIN { count=0 } { count+=$7 } END { printf("AVERAGE VOLUME: %8.2f\n", count/NR) }' FS="," GOOG_CLEAN.csv