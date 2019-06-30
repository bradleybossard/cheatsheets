cat links.md | grep -i $1 | awk -F: '{if(f!=$1)print ""; f=$1; print $0;}'
