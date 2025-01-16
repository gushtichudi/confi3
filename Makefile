install:
	cp -r .config/* ~/.config/
	cp -r .local/* ~/.local/
	@echo "Running post-installation script. This will check if you have all the needed"
	./post-install-scripts/checkDependencies.sh
	@echo "Ensuring path"
	python3 ensurepath.py
