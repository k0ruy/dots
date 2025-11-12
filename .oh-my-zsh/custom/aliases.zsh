# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=critical -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ls command
alias ls='exa -s date --grid --long --header --no-time --no-permissions --across --icons'
alias la='exa -s date --grid --long --header --no-time --no-permissions --across --icons -all'

# zoxide as cd for better directories navigation
# alias cd=z

# other
alias grep='grep --color=auto'
alias cda='conda activate'
alias cdd='conda deactivate'
alias s='sudo apt update && sudo apt'
alias sup='sudo apt update'
alias md='mkdir'
alias e='nvim'
alias se='sudoedit'
alias pdf='zathura'
alias install-discord='sudo apt install -y "$(find ~/Downloads -name "discord-*.deb" | sort -V | tail -n 1)"'

# git
alias glp='git log --all --decorate --graph --oneline'

# configs
alias ali='$EDITOR $ZSH_CUSTOM/aliases.zsh'
alias config="$EDITOR ~/.zshrc"
