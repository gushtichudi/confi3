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
