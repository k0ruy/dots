# these are abreviations for fish shell
function last_history_item; echo $history[1]; end
abbr -a !! --position anywhere --function last_history_item

abbr -a ali '$EDITOR ~/.config/fish/abr.fish'
abbr -a cat ccat
abbr -a grep 'grep --color=auto'
abbr -a glp "git log --graph --pretty=format:'%C(yellow)%h%C(auto)%d%Creset %s %C(white)- %an, %ar%Creset'"
abbr -a gla 'git log --all --graph --decorate --oneline'
abbr -a python python3

# # Directory
abbr -a md mkdir -p
abbr -a rd rmdir

# # List directory contents
abbr -a ls exa --grid --icons --long --header --no-permissions --no-time --across
abbr -a sl exa --grid --icons --long --header --no-permissions --no-time --across
abbr -a la exa -aF --grid --icons --long --header --no-permissions --no-time --across

abbr -a q exit
abbr -a yr 'cal -y'
abbr -a c cargo
abbr -a ct 'cargo t'
abbr -a cb 'cargo b'
abbr -a e nvim
abbr -a m make
abbr -a o open
abbr -a g git
abbr -a gc 'git checkout'
abbr -a ga 'git add -p'
abbr -a vimdiff 'nvim -d'

# conda abbreviations
abbr -a cda 'conda activate'
abbr -a cdd 'conda deactivate'
abbr -a cn 'conda'

# other
abbr start-templeOS-vm 'qemu-system-x86_64 -m 32G -smp 16 -enable-kvm -drive file=temple'
abbr s 'sudo apt'
abbr dots 'cd /home/ko4/GITS/dots; and git pull; and git add .'
