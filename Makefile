install:
	cp .vimrc ~/.vimrc
	git clone https://github.com/Lokaltog/powerline-fonts.git
	rm -f ~/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
