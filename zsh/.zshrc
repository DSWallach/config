# Custom alias's
alias userpath='sudo env "PATH=$PATH"'
alias smiwatch='watch -n 0.5 nvidia-smi'
alias l='ls -lah'
alias dir='ls -Alh | less'
alias clean='rm -f *~ .*~ \#*\#'
alias mv='mv -i'
alias ku='pkill -u dawallach'
alias wemacs='env TERM=xterm-256color emacs -nw'
alias srcocc='source /usr/local/bin/kroc-setup.sh'
alias ssv='ssh dawallach@mote.cs.vassar.edu'
alias swap='xmodmap ~/Documents/.xmodmap'
alias ssm='ssh wallad07@minerva.hpc.mssm.edu'
alias ssx='ssh -XY wallad07@minerva.hpc.mssm.edu'
alias check='grep "egg" -R *; grep "pyc" -R *'
alias cleane='rm -rf build; rm -rf dist; rm -rf ensemble.egg-info; rm ensemble/*.pyc;'
alias tach='tmux attach-session -t 0'
alias pperf='sudo cpupower frequency-set -g performance'
alias psave='sudo cpupower frequency-set -g ondemand'
alias oct='octave --no-gui'
alias susegrub='grub2-mkconfig -o /boot/grub2/grub.cfg'

# Directory Navigation
alias ds='dirs -v'

# Python
alias py='python'
alias pin='pip install .'
alias sac='source activate'

# Git
alias gitcleanup='git fetch -p && git branch -vv | awk '\''/: gone]/{print $1}'\'' | xargs git branch -d'
alias gcmp='ga; gc -m "Update"; gp'
alias gsync='cd ~/.yadr/GoalsList/; gcmp; po;'
alias ga='git add .'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias git nb='git checkout -b'

# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

# R Nonsense
alias setupR='export PKG_CXXFLAGS=`Rscript -e '\''Rcpp:::CxxFlags()'\''`; export PKG_LIBS=`Rscript -e '\''-enable-shared-lib -ligraph'\''`'

# Port Access
alias allow='sudo setcap '\''cap_net_bind_service=+ep'\'
alias gpg='gpg2'

# Vim
alias vi='nvim'

# Stolen

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# Kill processes
alias ka9='killall -9'
alias k9='kill -9'
