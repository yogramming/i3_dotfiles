#!/bin/bash

choice=$(printf "Fullscreen\nSelection" | rofi -dmenu -p "Screenshot type")

case "$choice" in
Fullscreen)
  maim ~/Pictures/screenshot_$(date +%s).png
  ;;
Selection)
  maim -s ~/Pictures/screenshot_$(date +%s).png
  ;;
esac
