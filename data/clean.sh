#!/bin/bash


#removing commas from columns detailing money


sh convert.sh "$1" | sed 's/\([0-9]\),\([0-9]\)/\1\2/g' | awk -F, '{print $0}' | sed 's/"\([0-9]\+\.[0-9]\+\)"/\1/g' > "$2"


