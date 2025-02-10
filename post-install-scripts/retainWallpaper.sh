#!/bin/bash

error() {
  zenity --error --text "$1"
  exit 1
}

# First check, check for wallpath.ci3
if [[ ! -f ~/.wallpath.ci3 ]]; then
  zenity --error --text "Cannot find wallpath file."
  exit 1
fi

# Second check, check if path has something
if [[ ! -s ~/.wallpath.ci3 ]]; then
  error "You haven't set a wallpaper. If this is your first time installing this configuration, close this dialog and set a wallpaper."
fi 

# Third check, set wallpaper
xwallpaper --zoom "$(cat ~/.wallpath.ci3)"
if [[ $? != 0 ]]; then
  error "Cannot set wallpaper. Try again sometime."
fi 
