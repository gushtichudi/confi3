#!/bin/bash

echo "==================== WHY AM I SEEING THIS WINDOW ===================="
echo "This provides better insight on what's really going on and fix any errors if encountered."

walset() {
	zenity --info --text "you will now be prompted to set a wallpaper."

	WALL=$(zenity --file-selection)
	[ $? == 0 ] && zenity --warning --text "WIP: Set wallpaper mode" || zenity --error --text "error occured. try running again using $(pwd)/wal.sh"

  echo $WALL > ~/.wallpath.ci3

	xwallpaper --zoom $WALL
	[ $? == 0 ] && export j=$WALL || zenity --error --text "error at setting wp: try running again using $(pwd)/wal.sh"

	wal -i $WALL
	[ $? == 0 ] && zenity --info --text "Colors from $WALL are set. Please create an issue on the repository if it doesn't do anything" || zenity --error --text "error at setting color: try again using $(pwd)/wal.sh"
}

walset
