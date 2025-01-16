#!/bin/bash

figlet "confi3"

check() {
	printf "checking if system has $1... "
	which $1 > /dev/null
	[ $? == 0 ] && printf "ok\n" || printf "no\n"
}

check "kitty"
check "picom"
check "polybar"
check "rofi"
check "xwallpaper"
check "zenity"
