n=$1
m=$2
filename=$3

echo "First $n lines of $filename:"
head -n "$n" "$filename"

echo "Last $m lines of $filename:"
tail -n "$m" "$filename"
