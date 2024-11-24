# Dotfiles
Dotfiles From My Archlinux

#### Clone Git repo for the dotfiles
```bash
git clone https://github.com/takumi55d/dotfiles ~/Dotfiles && cd ~/Dotfiles
```
#### Create needed symlinks using gnu **stow** and the dotfiles will be configured and ready to use
```bash
stow $(/bin/ls | grep -v README.md)
```
