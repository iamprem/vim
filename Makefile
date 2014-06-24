install:
	cp .vimrc ~/.vimrc
	rm -rf powerline-fonts
	git clone https://github.com/Lokaltog/powerline-fonts.git
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	@printf "Installation Complete!\n\n\n"
	@printf "Remember to install the fonts from %s/powerline-fonts and apply them\n", `pwd`
