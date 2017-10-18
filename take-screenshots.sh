#!/bin/bash

OPENSCAD=~/Desktop/OpenSCAD-book.app/Contents/MacOS/OpenSCAD
PARAMETERS="--imgsize=1500,1500 --autocenter --viewall --camera=100,200,100,0,0,0 --view=axes,scaleMarkers"

function param_exists {
    regex=${1#--}
    regex=${regex%%=*}
    for actual in $2; do
	actual=${actual#--}
	actual=${actual%%=*}
	if [[ $actual == $regex ]]; then
	    return 1
	fi
    done
    return 0
}

rm scad.txt
find . -name "*.scad" -print0 | while IFS= read -r -d '' file; do
  echo "$file" >> scad.txt
done

for file in `cat scad.txt`; do
    outdir=`dirname "$file"`
    dirname=`dirname "$file"`
    basename=`basename "$file" .scad`
    if [ -f "$dirname/dir.args" ]; then
	DIR_PARAMETERS=`cat "$dirname/dir.args"`
    else
	DIR_PARAMETERS=
    fi
    if [ -f "$dirname/$basename.args" ]; then
	EXTRA_PARAMETERS=`cat "$dirname/$basename.args"`
    else
	EXTRA_PARAMETERS=
    fi
    mkdir -p "$outdir/screenshots"
    ACTUAL_PARAMETERS=
    for param in $EXTRA_PARAMETERS $DIR_PARAMETERS $PARAMETERS; do
	if param_exists $param "$ACTUAL_PARAMETERS"; then
	    ACTUAL_PARAMETERS="$ACTUAL_PARAMETERS $param"
	fi
    done
    echo $OPENSCAD "$file" $ACTUAL_PARAMETERS -o "$outdir/screenshots/$basename.png"
    $OPENSCAD "$file" $ACTUAL_PARAMETERS -o "$outdir/screenshots/$basename.png"
done

