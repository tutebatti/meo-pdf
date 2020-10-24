#!/bin/bash

######################################################
#
# Simple script using pdftk to merge two files created
# by exeo-pdf (https://github.com/tutebatti/exeo-pdf)
#
# Based on and requires pdftk (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)
#
# Files created by exeo-pdf should not be renamed.
#
######################################################

# check if handled file is a pdf

mtype=$(file --mime-type -b "$1")

if ! echo $mtype | grep -q pdf ; then
	echo "Provided file ist not a pdf! Script is aborted!"
	exit 0
fi

# write filename without extension '_odd.pdf' or '_even.pdf' into variable "file"

file=$(echo "$1" | sed -E 's/even\.pdf|odd\.pdf//')

# using pdftk to merge pages

pdftk A=${file}_odd.pdf B=${file}_even.pdf shuffle A B output ${file}_merged.pdf

echo "Files ${file}_odd.pdf and ${file}_even.pdf wear merged in ${file}_merged.pdf."

exit 0
