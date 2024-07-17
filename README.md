# The dots for my """rice"""
⚠️ &nbsp; PLEASE READ THIS! this customization really was inspired a lot by [https://github.com/AlexvZyl/.dotfiles](https://github.com/AlexvZyl/.dotfiles/tree/archlinux), so many config files are similar and also the overall look. 
Wallpaper in the image is `wallpapers/greencar.jpg`.
I have an AMD graphics card, so i use radeontop for getting the GPU data. 
The Nvim configuration works for NvChad.
I include weather using OpenWeatherMap API. If you want to use it you will have to create an account and ask for an API key, then substitute the key inside the `~/scripts/weather.py` file.

***THIS IS SUPER IMPORTANT***
----------------------------------------
⚠️ &nbsp; You have to add a line inside your sudoers file to allow the syncing of the installed repos without password. 

⚠️ &nbsp; To do this add `%yourusername% ALL=NOPASSWD: /usr/bin/apt update`, replacing `%yourusername%` with your actual username. 

*i know this is not really a safe thing to do but it is allowing just the syncing, not really installing stuff or any other.*

By doing this the panel genmon plugin can automatically show the number of updates, and by clicking on the icon you can upgrade them.
----------------------------------------

The most important packages are:
`cowsay xfce4-genmon-plugin kitty btop exa spotifyctl zsh oh-my-zsh git github-cli gh neovim nvim ttf-jetbrains-mono-nerd` (some are to be installed via GitHub)

*Desktop with nvim and btop++ open:*
![desktop](https://github.com/user-attachments/assets/dffaf98a-92e1-412e-9e4e-e0c3b8d4e751)


# Installation

> ⚠️ &nbsp; Clone the repo and substitute the folders. I recommend to create backups of what you modify, so that you don't lose your configurations if something goes wrong

# Key Bindings

A few notes on the bindings:

- Keys combined with the `Super` key are reserved for OS and WM-related actions.  
- Arrows and `hjkl` keys are interchangeable.

<details>

<summary>Bindings table</summary>

</br>

|  Binding  |  Action   |
| :-------: | :-------: |
| Super + d | File manager (yazi) |
| Super + t | Terminal |
| Super + n | Neovim |
| Super + b | BTop++ |
| Super + Shift + Arrow | Move window between workspaces |
| Super + Number | Go to workspace |
| Super + w | Web browser |

</details>
