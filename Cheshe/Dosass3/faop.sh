
echo "Enter value of a:"
read a
echo "Enter value of b:"
read b

# Perform arithmetic operations and display results using bc
echo
echo "a + b = $(echo "$a + $b" | bc)"
echo "a - b = $(echo "$a - $b" | bc)"
echo "a * b = $(echo "$a * $b" | bc)"
if [ "$(echo "$b == 0" | bc)" -eq 1 ]; then
    echo "a / b = Error: Division by zero is not allowed."
else
    echo "a / b = $(echo "scale=2; $a / $b" | bc)"
fi
echo "a % b = $(echo "$a % $b" | bc)"

