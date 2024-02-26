### Requirements

1. [alacritty](https://github.com/alacritty/alacritty)
2. [tmux](https://github.com/tmux/tmux/wiki)
3. [neovim](https://github.com/neovim/neovim)

### How to install

```
chmod u+x update.sh && ./update.sh -mode local
```

### Open terminal with keybind

1. Install requirements `sudo apt install xdotool wmctrl`
2. Run `chmod u+x open_alacritty.sh`
3. Create a system keybind with `/full/path/to/open_alacritty.sh alacritty`
