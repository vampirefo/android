#!/bin/bash

if [ -f ~/bin/paths-12.1.sh ]; then
	source ~/bin/paths-12.1.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# audio: Make getPresentationPosition pure virtual
cherries+=(92978)

${android}/build/tools/repopick.py -b ${cherries[@]}
