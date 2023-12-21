#!/bin/bash
tot_precip=0
cont=0

while read Linea; do
cant_litros=$(echo "$Linea" | awk '{print $2}')
tot_precip=$((tot_precip + cant_litros))