#!/bin/bash

# Prompt for cost price and selling price
echo "Enter cost price:"
read cost_price
echo "Enter selling price:"
read selling_price

# Calculate profit or loss
if [ $(echo "$selling_price > $cost_price" | bc) -eq 1 ]; then
    profit=$(echo "$selling_price - $cost_price" | bc)
    echo "Profit = $profit"
elif [ $(echo "$cost_price > $selling_price" | bc) -eq 1 ]; then
    loss=$(echo "$cost_price - $selling_price" | bc)
    echo "Loss = $loss"
else
    echo "No profit, no loss."
fi

