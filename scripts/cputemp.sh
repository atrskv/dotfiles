#!/bin/sh
for hw in /sys/class/hwmon/hwmon*; do
  name=$(cat "$hw/name" 2>/dev/null)
  case "$name" in
  k10temp | coretemp)
    temp=$(cat "$hw/temp1_input" 2>/dev/null)
    if [ -n "$temp" ]; then
      echo $((temp / 1000))
      exit 0
    fi
    ;;
  esac
done
echo "–"
