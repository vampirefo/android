#!/bin/bash

if [ -f ~/bin/paths-12.0.sh ]; then
	source ~/bin/paths-12.0.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# vold: add ro.vold.umsdirtyratio property
cherries+=(88635)

# audio: Make getPresentationPosition pure virtual
cherries+=(92978)

${android}/build/tools/repopick.py -b ${cherries[@]}
