#!/bin/bash

OPENSCAD=~/Desktop/OpenSCAD-2017.05.28.app/Contents/MacOS/OpenSCAD

#for file in *.scad; do
#  $OPENSCAD $file -o screenshots/`basename $file .scad`.png
#done

#FILES=`find . -name "*.scad" -print0`
#echo $FILES | while IFS= read -r -d '' file; do
find . -name "*.scad" -print0 | while IFS= read -r -d '' file; do
    outdir=`dirname "$file"`
    basename=`basename "$file" .scad`
    mkdir -p "$outdir/screenshots"
    $OPENSCAD "$file" --imgsize=1500,1500 --autocenter --viewall --camera=100,200,100,0,0,0 -o "$outdir/screenshots/$basename.png"
done
