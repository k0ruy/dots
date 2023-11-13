# .dotfiles
⚠️ &nbsp; PLEASE READ THIS!

The most important packages are:
`pfetch btop exa feh git github-cli gh neovim nvim-packer pulseaudio ttf-jetbrains-mono-nerd`

I include weather using OpenWeatherMap API. If you want to use it you will have to create an account and ask for an API key, then substitute the key inside the `~/scripts/weather.py` file.
Below I put an image of the updated desktop.

*Empty desktop with my modified coinfiguration:*
![Screenshot_2023-11-13_20-32-31](https://github.com/k0ruy/dots/assets/71659265/d1cb441e-c30e-4463-a3bb-66cd19a29b65)

The configuration files for my Linux desktop.

# Installation

> ⚠️ &nbsp; Clone the repo and substitute the folders. I recommend to create backups of what you modify, so that you don't lose your configurations if something goes wrong

# Showcase

Some screenshots showing off the desktop and rice.

<details>

<summary>Overview</summary>

</br>

Wallpapers can be found at [this ImageGoNord repo](https://github.com/linuxdotexe/nordic-wallpapers) (they "norded" some nice wallpapers) and [locally](https://github.com/k0ruy/dots/tree/main/wallpapers).

</details>

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

*Desktop with my terminal, nvim and btop open:*
![Screenshot_2023-11-13_20-31-40](https://github.com/k0ruy/dots/assets/71659265/ac638bc5-1465-4606-afe6-0fbc94f6d7f7)

> ℹ️ &nbsp; I try to keep all of the key bindings in [this file](https://github.com/AlexvZyl/.dotfiles/blob/main/.config/nvim/lua/alex/key-bindings.lua).

