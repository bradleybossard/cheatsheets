gifsicle input.gif --scale 0.7 > output.gif     # Scale GIF

ffmpeg -i input.flv -vf scale=320:-1 -t 10 -r 10 output.gif
