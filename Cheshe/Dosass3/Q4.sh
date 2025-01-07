echo "Enter a five-digit number:"
read num

# Calculate sum of digits
sum=0
while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
done

# Display result
echo "Sum of digits = $sum"
