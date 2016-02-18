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
echo -n 'Enter destination directory for native OSX screenshots'
read DIR

[ $1 == 'default' ] && DIR_VAR=$DEFAULT_DIR || DIR_VAR=$DIR

echo "Changing screenshot destination directory to $DIR_VAR"

defaults write com.apple.screencapture location $DIR_VAR
killall SystemUIServer
