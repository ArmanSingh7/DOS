#!/bin/bash

# Prompt for internal mark and attendance percentage
echo "Enter internal mark:"
read mark
echo "Enter percentage in attendance:"
read attendance

# Check eligibility
if [ $mark -ge 20 ] && [ $attendance -ge 75 ]; then
    echo "Allowed for Semester"
else
    echo "Not allowed"
fi

