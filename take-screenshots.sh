#!/bin/bash

OPENSCAD=~/Desktop/OpenSCAD-2016.11.21.app/Contents/MacOS/OpenSCAD

for file in *.scad; do
  $OPENSCAD $file -o screenshots/`basename $file .scad`.png
done
