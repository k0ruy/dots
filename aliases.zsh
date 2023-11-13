# some more ls aliases
alias ll='ls -l'
alias la='ls -a'

# bat aliases
alias bat="batcat"
alias bathelp='batcat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}

# conda aliases
alias cda="conda activate"
alias cdd="conda deactivate"
alias c="conda"


# other
alias ls='exa --grid --icons --long --header --no-permissions --no-time --across'
alias start-templeOS-vm='qemu-system-x86_64 -m 32G -smp 16 -enable-kvm -drive file=temple'
alias reset='/usr/bin/clear && source /home/ko4/.zshrc'
alias home=reset
alias q='exit'
