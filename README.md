# dotfiles

These are my config files (a.k.a. dotfiles) for some terminal applications in Linux:
- `Neovim`
- `ranger`
- `Starship`
- `tmux`


## List of applications

### Neovim
The `Neovim` text editor: [https://neovim.io/](https://neovim.io/)
My config is based on the `LazyVim` distribution: [http://www.lazyvim.org/](http://www.lazyvim.org/)
### ranger 
The `ranger` file manager: [https://github.com/ranger/ranger](https://github.com/ranger/ranger)

### Starship
The `Starship` cross-shell prompt: [https://starship.rs/](https://starship.rs/)

### tmux
The `tmux` terminal multiplexer: [https://github.com/tmux/tmux](https://github.com/tmux/tmux)


## Installation
Clone the repo into your `~/.config/` directory:
```
cd ~/.config
git clone https://github.com/maxmartelli/dotfiles
```

Then, create simlinks to the relevant files and directories of `~/.config/dotfiles/`:
```
cd ~/.config
ln -s dotfiles/nvim nvim
ln -s dotfiles/ranger ranger
ln -s dotfiles/starship.toml starship.toml

cd
ls -s .config/dotfiles/tmux/tmux.conf .tmux.conf
```

