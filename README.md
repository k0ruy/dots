# The dots for my """rice"""
⚠️ &nbsp; PLEASE READ THIS!

***THIS IS SUPER IMPORTANT***
----------------------------------------
You have to add a line inside your sudoers file to allow the syncing of the installed repos without password. To do this add
`%yourusername% ALL=NOPASSWD: /usr/bin/apt update`, replacing `%yourusername%` with your actual username. *ik this is not really a safe thing to do but it is allowing just the syncing, not really installing stuff or any other.*
By doing this the panel genmon plugin can automatically show the number of updates, and by clicking on the icon you can upgrade them.
----------------------------------------

The most important packages are:
`pfetch xfce4-genmon-plugin kitty btop exa spotify zsh oh-my-zsh git github-cli gh neovim nvim-packer pulseaudio ttf-jetbrains-mono-nerd` (some are to be installed via GitHub)

I include weather using OpenWeatherMap API. If you want to use it you will have to create an account and ask for an API key, then substitute the key inside the `~/scripts/weather.py` file.
Below I put an image of the updated desktop.

*Desktop with my terminal, nvim and btop open:*
![Screenshot_2023-11-13_20-31-40](https://github.com/k0ruy/dots/assets/71659265/5c04fca6-8657-4255-9d7a-6bd2a94351dc)

*Empty desktop with my modified coinfiguration:*
![Screenshot_2023-11-13_20-32-31](https://github.com/k0ruy/dots/assets/71659265/464d0b56-8727-43bd-a593-a7015a443ef0)

<details>

<summary>Overview</summary>

</br>

Wallpapers can be found at [this ImageGoNord repo](https://github.com/linuxdotexe/nordic-wallpapers) (they "norded" some nice wallpapers) and [locally](https://github.com/k0ruy/dots/tree/main/wallpapers).

</details>

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
| Super + d | File manager |
| Super + t | Terminal |
| Super + n | Neovim |
| Super + b | BTop++ |
| Super + Arrow | Cycle windows |
| Super + Shift + Arrow | Move window between workspaces |
| Super + Number | Go to workspace |
| Super + w | Web browser |

</details>

# Neovim Config

This [config](https://github.com/AlexvZyl/.dotfiles/tree/main/.config/nvim) has a decent amount of work and is basically a fully fledged IDE. I changed a couple of things in my config and to configure neovim ***in theory*** should be enough to open `nvim` in a terminal and running `:PackerSync`. Be sure to have the latest version of nvim and not the one installed by the package manager.


> ℹ️ &nbsp; I try to keep all of the key bindings in [this file](https://github.com/AlexvZyl/.dotfiles/blob/main/.config/nvim/lua/alex/key-bindings.lua).

