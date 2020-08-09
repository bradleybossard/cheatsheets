# TODO: Write script show word counts from titles
# TODO: Add space to each side of search, break out indiviual words
# TODO: Make search take multiple terms

cat links.md | grep -i "$1" | sort | uniq | awk -F: '{if(f!=$1)print ""; f=$1; print $0;}'
#cat links.md | grep -i $1 | awk -F: '{if(f!=$1)print ""; f=$1; print $0;}'
