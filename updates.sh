#!/bin/bash

if [ -f ~/bin/paths-13.0.sh ]; then
	source ~/bin/paths-13.0.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# Implement UICC TLV Data decoding.
cherries+=(114381)

# Skip unknown tags instead of aborting when parsing UICC TLV data
cherries+=(114382)

# UiccController: add back registerForOn
cherries+=(114805)

# UiccController: use registerForAvailable only when persist.radio.apm_sim_not_pwdn is enabled
cherries+=(114806)

${android}/build/tools/repopick.py -b ${cherries[@]}
