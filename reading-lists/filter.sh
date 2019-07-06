grep -F -v -i "$1" links.md | cat -s > links.md.tmp && mv links.md.tmp links.md
