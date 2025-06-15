#!/bin/bash

# Clean up any previous screenshot
rm -f /tmp/lockscreen.png /tmp/lockscreen_blur.png

# Take a fresh screenshot
scrot /tmp/lockscreen.png

# Blur the screenshot
magick /tmp/lockscreen.png -blur 0x8 /tmp/lockscreen_blur.png

# Run i3lock with custom styling
i3lock \
  -i /tmp/lockscreen_blur.png \
  --ring-color=00ff00ff \
  --inside-color=00000000 \
  --line-color=00000000 \
  --keyhl-color=00ff00ff \
  --bshl-color=ff0000ff \
  --separator-color=00000000 \
  --ringver-color=00ff00ff \
  --ringwrong-color=ff0000ff \
  --insidever-color=00000000 \
  --insidewrong-color=00000000 \
  --ind-pos="x+960:y+540" \
  --radius=250 \
  --clock \
  --time-color=ffffffff \
  --time-size=60 \
  --date-color=ffffffff \
  --date-size=20 \
  --time-font="JetBrains Mono" \
  --date-font="JetBrains Mono" \
  --time-pos="ix:iy-20" \
  --date-pos="ix:iy+20" \
  --indicator \ 
--verif-text="" \
  --wrong-text="" \
  --noinput-text=""
