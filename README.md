# .dotfiles
⚠️ &nbsp; PLEASE READ THIS!

The most important packages are:
`pfetch btop exa feh git github-cli gh neovim nvim-packer pulseaudio ttf-jetbrains-mono-nerd`

I include weather using OpenWeatherMap API. If you want to use it you will have to create an account and ask for an API key, then substitute the key inside the `~/scripts/weather.py` file.
Below I put an image of the updated desktop.

*Empty desktop with my modified coinfiguration:*
![image](https://user-images.githubusercontent.com/71659265/235355427-4f31a84c-0ca9-4e52-a9df-a48128fc34e0.png)

The configuration files for my Linux desktop.  Supports Arch based distros using Gnome and/or i3. 

# Installation

> ⚠️ &nbsp; Sadly you will have to do this manually:

```bash
# Clone.
sudo pacman -S git
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mkdir ~/.dotfiles
config clone --bare https://github.com/k0ruy/.dotfiles ~/.dotfiles/
config checkout -f

find ~/.scripts/install/ -type f -iname "*.sh" -exec chmod +x {} \;

# Run main install script.
~/.scripts/install/install.sh
```

# Theme

The theme is based on my Neovim plugin, [nordic.nvim](https://github.com/AlexvZyl/nordic.nvim).  It is a warmer and darker version of the [Nord](https://www.nordtheme.com/) color palette.

# Showcase

Some screenshots showing off the desktop and rice.

<details>

<summary>Overview</summary>

</br>

Wallpapers can be found at [this ImageGoNord repo](https://github.com/linuxdotexe/nordic-wallpapers) (they "norded" some nice wallpapers) and [locally](https://github.com/AlexvZyl/.dotfiles/tree/main/.wallpapers).


*Notifications via [dunst](https://github.com/dunst-project/dunst):*
![image](https://user-images.githubusercontent.com/71659265/235106355-a28a93b4-d816-47e2-af53-dc28664d6d8e.png)

*Launcher via [rofi](https://github.com/adi1090x/rofi) (cant screenshot on my setup, this is the original image from AlexvZyl):*
![image](https://user-images.githubusercontent.com/81622310/211895894-663f3480-d2d9-4546-8f1b-04217cb2dd75.png)

*Powermenu via [rofi](https://github.com/adi1090x/rofi) (cant screenshot on my setup, this is the original image from AlexvZyl):*
![image](https://user-images.githubusercontent.com/81622310/211911407-050741e9-d7d7-412c-ac12-044f002e8b6f.png)

</details>

# Key Bindings

A few notes on the bindings:

- Keys combined with the `Super` key are reserved for OS and WM related actions.  
- Arrows and `hjkl` keys are interchangeable.

<details>

<summary>Bindings table</summary>

</br>

|  Binding  |  Action   |
| :-------: | :-------: |
| Super + d | App launcher |
| Super + p | Powermenu |
| Super + t | Terminal |
| Super + n | Neovim |
| Super + b | BTop++ |
| Super + g | NVtop |
| Super + R | Toggle read mode |
| Super + tab | Windows |
| Super + Arrow | Cycle windows |
| Super + Shift + Arrow | Move window |
| Super + Number | Go to workspace |
| Super + r | Newsboat |
| Super + w | iwctl |

</details>

# Neovim Config

This [config](https://github.com/AlexvZyl/.dotfiles/tree/main/.config/nvim) has a decent amount of work and is basically a fully fledged IDE.  Why didn't I use [LunarVim](https://github.com/LunarVim/LunarVim), [NvChad](https://github.com/NvChad/NvChad) or [SpaceVim](https://github.com/liuchengxu/space-vim)?  I like doing things myself.

To configure neovim ***in theory*** should be enough to open `nvim` in a terminal and running `:PackerSync`.

> ℹ️ &nbsp; I try to keep all of the key bindings in [this file](https://github.com/AlexvZyl/.dotfiles/blob/main/.config/nvim/lua/alex/key-bindings.lua).

![image](https://user-images.githubusercontent.com/81622310/233982609-f9c15e39-da60-43d8-8c5c-4761db95ad9d.png)
