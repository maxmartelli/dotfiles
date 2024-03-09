# dotfiles

These are my config files (a.k.a. dotfiles) for some terminal applications in Linux:
- `Starship`
- `Neovim`


## List of applications

### Starship
The `Starship` cross-shell prompt: [https://starship.rs/](https://starship.rs/)

### Neovim
The `Neovim` text editor: [https://neovim.io/](https://neovim.io/)

My config is based on the `LazyVim` distribution: [http://www.lazyvim.org/](http://www.lazyvim.org/)

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
ln -s dotfiles/starship.toml starship.toml
ln -s dotfiles/nvim nvim

cd
ls -s dotfiles/tmux/tmux.conf .tmux.conf
```

