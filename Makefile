install:
	cp .vimrc ~/.vimrc
	rm -rf powerline-fonts
	git clone https://github.com/Lokaltog/powerline-fonts.git
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	powerline-fonts/install.sh
	@printf "Installation Complete!\n\n\n"
