SHELL=/bin/bash

all:
	@$(MAKE) node
	@$(MAKE) python
	@$(MAKE) vim
	@$(MAKE) node-update

chore:
	@$(MAKE) apt-update
	@$(MAKE) apt-upgrade
	@$(MAKE) tlmgr-update
	@$(MAKE) vim-update

.PHONY: apt
apt-all:
	@$(SHELL) ./pkgman/apt.sh

apt-basic:
	@$(SHELL) ./pkgman/apt/basic.sh

apt-neovim:
	@$(SHELL) ./pkgman/apt/neovim.sh

apt-python:
	@$(SHELL) ./pkgman/apt/python.sh

apt-desktop:
	@$(SHELL) ./pkgman/apt/desktop.sh

apt-update:
	@sudo apt -y update

apt-upgrade:
	@sudo apt -y upgrade
	@sudo apt -y autoclean
	@sudo apt -y autoremove

.PHONY: node
node:
	@$(SHELL) ./node/install.sh

node-update:
	@$(SHELL) ./node/update.sh

python:
	@$(SHELL) ./python-install.sh

texlive:
	# more than 7GB
	# too large, so I excluded this from "all"
	@$(SHELL) ./tex/texlive-install.sh

tlmgr:
	@sudo env PATH="${PATH}" tlmgr update --list

tlmgr-update:
	@sudo env PATH="${PATH}" tlmgr update --self --all

vim:
	@$(SHELL) ./vim-editor/plug-install.sh vim all

vim-minimal:
	@$(SHELL) ./vim-editor/plug-install.sh vim minimal

vim-plain:
	@$(SHELL) ./vim-editor/plug-install.sh vim plain

neovim:
	@$(SHELL) ./vim-editor/plug-install.sh neovim all

neovim-minimal:
	@$(SHELL) ./vim-editor/plug-install.sh neovim minimal

neovim-plain:
	@$(SHELL) ./vim-editor/plug-install.sh neovim plain

vim-update:
	@$(SHELL) ./vim-editor/update.sh
