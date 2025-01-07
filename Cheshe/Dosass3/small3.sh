#!/bin/bash

# Validate input
if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 num2 num3"
    exit 1
fi

# Find the smallest number
if [ $1 -le $2 ] && [ $1 -le $3 ]; then
    echo "Smallest: $1"
elif [ $2 -le $1 ] && [ $2 -le $3 ]; then
    echo "Smallest: $2"
else
    echo "Smallest: $3"
fi

