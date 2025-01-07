

# Prompt user for input
echo "Enter value of a:"
read a
echo "Enter value of b:"
read b

# Perform arithmetic operations and display results
echo
echo "a + b = $(expr $a + $b)"
echo "a - b = $(expr $a - $b)"
echo "a * b = $(expr $a \* $b)"
echo "a / b = $(expr $a / $b)"
echo "a % b = $(expr $a % $b)"

