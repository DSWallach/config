#! /usr/bin/zsh
export name=".sel"
export XDG_CONFIG_HOME=$HOME/.config

# Install necessary packages
if [ $0 = "full" ]; then
	if [ $(hostname) != "web01@minerva.hpc.mssm.edu" ]; then
# Setup mongodb repo
echo "[Mongodb]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" | sudo tee /etc/yum.repos.d/mongodb.repo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y;
sudo dnf upgrade -y;
sudo dnf install cmake gcc-c++ make python3-devel zsh vim gvim tmux util-linux-user gnome-tweak-tool htop task fzf mongodb-org mariadb mariadb-server -y;
sudo dnf install gstreamer1-libav gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-nonfree gstreamer1-plugins-good gstreamer1-plugins-ugly lame-libs lame-libs -y;
sudo dnf group upgrade --with-optional Multimedia -y;
        else
		module use /hpc/packages/minerva-common/modulefiles;
	fi
fi

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
ln -sf $HOME/$name/zsh/zpreztorc $HOME/.zpreztorc
ln -sf $HOME/$name/ssh/config $HOME/.ssh/config
ln -sf $HOME/$name/ctags $HOME/.ctags

if [ $0 = "full" ]; then
	# Setup for vim and neovim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	vim +PlugInstall +qall
	nvim +PlugInsatll +qall

	cd ~/.vim/plugged/YouCompleteMe;
	python3 install.py --clang-completer

	chsh -s /bin/zsh

  zsh "${HOME}/${name}/zsh/antigen.zsh"
fi
