#!/bin/bash

# Prompt for a day
echo "Enter a day:"
read day

# Convert day to lowercase
day=$(echo $day | tr '[:upper:]' '[:lower:]')

# Display class time or appropriate message
case $day in
    monday|wednesday|friday)
        echo "DOS class at 10:00 AM in Room 101"
        ;;
    tuesday|thursday)
        echo "DOS class at 11:00 AM in Room 202"
        ;;
    sunday)
        echo "Holiday"
        ;;
    *)
        echo "No class on $day"
        ;;
esac

