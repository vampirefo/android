#!/bin/bash

if [ -f ~/bin/paths-12.0.sh ]; then
	source ~/bin/paths-12.0.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# Revert "Revert "Reenable support for non-PIE executables""
cherries+=(79136)

# Implement UICC TVL Data decoding
cherries+=(80227)

# Legacy RIL requires radio technology equals CDMA or GSM
cherries+=(79912)

${android}/build/tools/repopick.py -b ${cherries[@]}
