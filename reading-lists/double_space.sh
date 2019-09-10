files=$(ls *.md)
for file in $files; do
  cat $file | awk -F: '{if(f!=$1)print ""; f=$1; print $0;}' >> "$file".tmp
  mv "$file".tmp "$file"
done
