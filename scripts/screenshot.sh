#!/bin/bash

timestamp=`date +%Y-%m-%d-%s`
name=~/Pictures/${timestamp}_screenshot.png

import $name
convert -shave 1x1 -trim $name $name
