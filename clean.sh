#!/bin/bash


#removing commas from columns detailing money

sed 's/\([0-9]\),\([0-9]\)/\1\2/g' "$1" | awk -F, '{print $0}' > "$2"
