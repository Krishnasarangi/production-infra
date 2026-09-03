#!/bin/bash

echo "===== Disk Usage Check ====="

df -h

echo "===== Disks Above 80% ====="

df -h | awk 'NR>1 {gsub("%","",$5); if ($5 > 80) print $0}'
