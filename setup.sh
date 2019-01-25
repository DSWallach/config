export name=".sel"

if [ $(hostname) = "localhost.localdomain" ]; then
    sudo dnf install cmake gcc-c++ make python3-devel
else
    module use /hpc/packages/minerva-common/modulefiles
fi

git clone ssh://github.com/dswallach/config ${HOME}/${name}

ln -sf $HOME/$name/vim/vim $HOME/.vim
ln -sf $HOME/$name/vim/vimrc $HOME/.vimrc
ln -sf $HOME/$name/vim/flake8 $HOME/.flake8
ln -sf $HOME/$name/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/$name/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/$name/git/gitconfig $HOME/.gitconfig
ln -sf $HOME/$name/taskwarrior/task $HOME/.task
ln -sf $HOME/$name/taskwarrior/taskrc $HOME/.taskrc

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
