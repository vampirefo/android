#!/bin/bash

if [ -f ~/bin/paths-12.1.sh ]; then
	source ~/bin/paths-12.1.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# Fix GPS for old GPS HALs
cherries+=(97902)

${android}/build/tools/repopick.py -b ${cherries[@]}
