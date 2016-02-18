#!/bin/bash
# grabsy.sh - # Change the default destination folder for os x screenshots.
# 
# USAGE
# sh grabsy.sh  
#       You will be prompted for the destination directory for screenshots 
# sh grabsy.sh default
#       to revert to the system default destination on the Desktop.  
#
# Reassembled by Eric Hagstrom.

DEFAULT_DIR=~/Desktop

if [[ $1 = "default" ]]; then
	DIR_VAR=$DEFAULT_DIR
else
	read -p 'Enter destination directory for native OSX screenshots: ' DIR
	DIR_VAR=$DIR
fi

echo "Changing screenshot destination directory to $DIR_VAR"

defaults write com.apple.screencapture location $DIR_VAR
killall SystemUIServer
