#!/bin/bash

timestamp=$(date +%Y-%m-%d-%s)
name=~/Pictures/${timestamp}_screenshot.png

args=$(getopt -o s -l select -n "$0" -- "$@")
eval set -- "$args"

while true; do
  case "$1" in
    -s | --select ) select=true; shift ;;
    * ) break ;;
  esac
done

if [ "x$select" = "xtrue" ]; then
  import "$name"
else
  import -window root "$name"
fi

convert -shave 1x1 -trim "$name" "$name"
