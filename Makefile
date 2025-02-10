install:
	cp -r .config/* ~/.config/
	cp -r .local/* ~/.local/
	@echo "Running post-installation script. This will check if you have all the needed"
	@./post-install-scripts/checkDependencies.sh
	@echo "Ensuring path"
	@echo "Attention: path ensurement script is experimental, on ~/.bashrc write \`export \$PATH=\$PATH:\$HOME/.local/bin\`"

disable_blur:
	cp .config/picom/picomNoBlur.conf ~/.config/picom/picom.conf

disable_kitty_opacity:
	cp .config/kitty/kittyNoTrans.conf ~/.config/kitty/kitty.conf

retain_wallpaper:
	@echo "Warning: PLEASE run make install after you've done this.\n"
	echo "exec --no-startup-id mate-terminal -c ./post-install-scripts/retainWallpaper.sh" >> .config/i3/config
