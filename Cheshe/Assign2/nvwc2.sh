file="result"
echo -e "Filename\tLinecount\tWordcount\tCharcount"
echo -e "$file\t\t$(wc -l < $file)\t\t$(wc -w < $file)\t\t$(wc -m < $file)"
