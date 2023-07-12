
list fonts imagemagick can see

```
convert -list font
```

create an image with some text

```
convert -background "#000000" -size 800x480 -fill "#ffffff" -pointsize 72 -font "Helvetica-Bold" -gravity center label:'Some Text' output.png
```


