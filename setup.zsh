#! /usr/bin/zsh
export name=".sel"
export XDG_CONFIG_HOME=$HOME/.config

# Install necessary packages
#if [ $0 = "full" ]; then
	#if [ $(hostname) != "node2-3@minerva.hpc.mssm.edu" ]; then
		sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y;
		#sudo dnf upgrade -y;
		sudo dnf install cmake gcc-c++ make python3-devel zsh vim neovim tmux util-linux-user taskwarrior fzf -y;
	#else
	#	module use /hpc/packages/minerva-common/modulefiles;
	#fi
#fi

# Clone my config repo
if [ ! -d ${HOME}/${name} ]; then
    git clone ssh://github.com/dswallach/config ${HOME}/${name};
fi

# Add links for all my config files
ln -sf $HOME/$name/vim/vim $HOME/.vim
ln -sf $HOME/$name/vim/vimrc $HOME/.vimrc
ln -sf $HOME/$name/vim/vim $XDG_CONFIG_HOME/nvim
ln -sf $HOME/$name/vim/vimrc $XDG_CONFIG_HOME/nvim/init.vim
ln -sf $HOME/$name/vim/flake8 $HOME/.flake8
ln -sf $HOME/$name/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/$name/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/$name/git/gitconfig $HOME/.gitconfig
ln -sf $HOME/$name/conda/condarc $HOME/.condarc
ln -sf $HOME/$name/taskwarrior/task $HOME/.task
ln -sf $HOME/$name/taskwarrior/taskrc $HOME/.taskrc


#if [ $0 = "full" ]; then
	# Setup for vim and neovim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	vim +PlugInstall +qall
	nvim +PlugInsatll +qall

	cd ~/.vim/plugged/YouCompleteMe;
	python3 install.py --clang-completer

	chsh -s /bin/zsh

  zsh "${HOME}/${name}/zsh/antigen.zsh"
#fi

ln -sf $HOME/$name/zsh/zpreztorc $HOME/.zpreztorc
