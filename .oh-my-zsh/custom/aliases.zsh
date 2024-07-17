# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=critical -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# ls command
alias ls='exa --grid --long --header --no-time --no-permissions --across --icons --git'
alias la='exa --grid --long --header --no-time --no-permissions --across --icons --git -all'

alias cd=z

# other
alias grep='grep --color=auto'
alias cda='conda activate'
alias cdd='conda deactivate'
alias s='sudo apt'
alias md='mkdir'
alias e='nvim'
alias se='sudoedit'

# git
alias glp='git log --all --decorate --graph --oneline'

# configs
alias ali='$EDITOR $ZSH_CUSTOM/aliases.zsh'
alias config="$EDITOR ~/.zshrc"
