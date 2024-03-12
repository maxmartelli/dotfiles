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

Then, `cd` into the `dotfiles` directory:
```
cd dotfiles
```
make the install script `install.sh` executable:
```
chmod +x ./install.sh
```
and launch it:
```
./install.sh
```

The script will backup the already existing config files/directories and it will create the following symlinks to the relevant files/directories of `~/.config/dotfiles/`:
- In the `~/.config` directory:
	- `nvim --> dotfiles/nvim`
	- `ranger --> dotfiles/ranger`
	- `starship.toml --> dotfiles/starship.toml`
- In the `~` directory:
	- `.tmux.conf --> .config/dotfiles/tmux/tmux.conf`

