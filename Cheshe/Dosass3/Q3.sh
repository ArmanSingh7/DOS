
# Prompt for basic salary
echo "Enter Ramesh's basic salary:"
read basic_salary

# Calculate allowances
da=$(echo "$basic_salary * 0.40" | bc)
hra=$(echo "$basic_salary * 0.20" | bc)
gross_salary=$(echo "$basic_salary + $da + $hra" | bc)

# Display gross salary
echo "Gross Salary = $gross_salary"

