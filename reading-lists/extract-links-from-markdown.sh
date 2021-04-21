# need to install in current env
# pip install markdown-link-extractor 

find -L . -name "README.md" | xargs python -m markdown_link_extractor
