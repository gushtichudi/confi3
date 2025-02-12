all:
	@echo "Please run either of these targets to get what you desire."
	@echo "	- install:	REQUIRED FOR REST OF THE TARGETS."
	@echo "		   	* installs the main configuration."
	@echo
	@echo "	- disable_blur:	* disables compositor blur"
	@echo
	@echo "	- disable_kitty-opacity:"
	@echo "			* companion target of disable_blur"
	@echo "			* removes transparency from kitty terminal"

install:
	cp -r .config/* ~/.config/
	cp -r .local/* ~/.local/
	cp -r .themes/* ~/.themes/
	@echo "Running post-installation script. This will check if you have all the needed"
	@./post-install-scripts/checkDependencies.sh
	@echo "Ensuring path"
	@echo "Attention: path ensurement script is experimental."

disable_blur:
	cp .config/picom/picomNoBlur.conf ~/.config/picom/picom.conf

disable_kitty_opacity:
	cp .config/kitty/kittyNoTrans.conf ~/.config/kitty/kitty.conf

retain_wallpaper:
	@echo "Warning: PLEASE run make install after you've done this.\n"
	echo "exec --no-startup-id mate-terminal -c ./post-install-scripts/retainWallpaper.sh" >> .config/i3/config
