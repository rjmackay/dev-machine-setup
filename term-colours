#!/bin/bash

# pick some colors
RED_FONT_COLOR=$((33000 + RANDOM % 60000))
GREEN_FONT_COLOR=$((33000 + RANDOM % 60000))
BLUE_FONT_COLOR=$((33000 + RANDOM % 60000))
RGB_FONT_COMBO="{$RED_FONT_COLOR,$GREEN_FONT_COLOR,$BLUE_FONT_COLOR}";

## Set the font color
OSACMD="tell front window of app \"Terminal\" to set normal text color to $RGB_FONT_COMBO"
osascript -e "$OSACMD"
