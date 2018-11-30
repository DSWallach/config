export name=".sel"

git clone ssh://github.com/dswallach/config ${HOME}/${name}

ln -sf $HOME/$name/vim/vim $HOME/.vim
ln -sf $HOME/$name/vim/vimrc $HOME/.vimrc
ln -sf $HOME/$name/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/$name/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/$name/git/gitconfig $HOME/.gitconfig

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

etopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
