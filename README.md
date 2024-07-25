# The dots for my *"rice"*

Some general info:
* This customization really was inspired a lot by [https://github.com/AlexvZyl/.dotfiles](https://github.com/AlexvZyl/.dotfiles/tree/archlinux), so many config files are similar and also the overall look. 
* Current wallpaper is `wallpapers/greencar.jpg`.
* The Nvim configuration works for NvChad.
* I include weather using OpenWeatherMap API. If you want to use it you will have to create an account and ask for an API key, then substitute the key inside the `~/scripts/weather.py` file.
* GTK theme is [this](https://www.xfce-look.org/s/XFCE/p/1403328/).
* `cronie` runs ` ~/scripts/backup.sh` every day at 12:00 and 20:00, and `~/scripts/update_alert.sh` every Friday at 19:00, so if you want add these lines to `crontab -e`: `0 12,20 * * * /home/CHANGEME/scripts/backup.sh >> /home/CHANGEME/scripts/backup_log.txt 2>&1` and `0 19 * * FRI /home/CHANGEME/scripts/update_alert.sh`. Please remember to change the username to yours, and to leave an empty line at the end of the file. Also, check `cronie` service is up and running, and is enabled (so that it starts with the system).

  
> [!TIP]
> Install `yay` AUR helper ([how to install yay?](https://itsfoss.com/install-yay-arch-linux/), [yay repo](https://github.com/Jguer/yay)) so that for the packages are not installable by `pacman`.
> Install these packages for smoother customization, as you will (*should*) have all pieces: `cowsay cronie s-tui radeontop xfce4-genmon-plugin picom kitty dunst rofi yazi btop eza zsh oh-my-zsh git github-cli nvim`.
> Nerd Font is JetBrainsMono Nerd Font.

> [!NOTE]
> I have an AMD graphics card, so i use `radeontop` for getting the GPU data.
> For Spotify data at the bottom of the display, all the scripts are in `~/scripts/spotify-panel` folder. `sp.sh` if from [here](https://gist.github.com/streetturtle/fa6258f3ff7b17747ee3), while `spotify-panel.sh` is custom.

> [!IMPORTANT]
> You have to add a line inside your sudoers file to allow the syncing of the installed repos without password. 
> To do this add `%yourusername% ALL=(ALL) NOPASSWD: /usr/bin/yay, /usr/bin/s-tui`, replacing `%yourusername%` with your actual username.
> 
> **`sudo s-tui` is used for monitoring the cpu wattage, while `sudo yay` for displaying the Pacman updates count.**
> 
>  I suggest to shut down and turn on the pc to make this work, I found that yay still asks for passwords if you only modify with `sudo visudo` and save it. Once rebooted everything you put in this line shoud work without asking for passwords when using with `sudo`.
> 
> *i know this is not really a safe thing to do but it is allowing just the syncing, not really installing stuff or any other.*
>
> **By doing this the panel genmon plugin can automatically show the number of updates, using `yay -Syy` and `yay -Qu`.**

> [!CAUTION]
> If you fail to do so, all the genmon plugins that use sudo commands and update rather quickly (3s or so) will try to use the command without having sufficient permissions. You have only a finite amount of tries before the use of `sudo` is blocked due to too many failed attempts, forcing you to restart the system to reset this. Please first update accordingly the sudoers file using `sudo visudo` and ***LATER*** apply the scripts to the genmon plugin. 

## Showcasing desktop
*Desktop with nvim, btop++ and kitty terminal running `cbonsai`:*
![image](https://github.com/user-attachments/assets/c26881c8-2cfb-4eb7-9ac0-0ca75ed842e0)



## Installation

> [!wARNING]
> Clone the repo and substitute the folders. I recommend to create backups of what you modify, so that you don't lose your configurations if something goes wrong

# Key Bindings

A few notes on the bindings:

- Keys combined with the `Super` key are reserved for OS and WM-related actions.  
- Arrows and `hjkl` keys are interchangeable.

<summary>Bindings table</summary>

|  Binding  |  Action   |
| :-------: | :-------: |
| Super + d | File manager (yazi) |
| Super + t | Terminal |
| Super + n | Neovim |
| Super + b | BTop++ |
| Super + Shift + Arrow | Move window between workspaces |
| Super + Number | Go to workspace |
| Super + w | Web browser |
`

> [!NOTE]
> ...yeah I really like the new MarkDown blockquote function, as you may have noticed ahah.
