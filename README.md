## Installation

Install zsh<br>

Change default shell to zsh with:

```bash
chsh -s $(which zsh)
```

Install [OhMyZsh](https://ohmyz.sh/):

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install this repo into `~/.config/dotfiles`:

```bash
git clone https://github.com/gp22/dotfiles.git ~/.config/dotfiles
```

Then `cd` into the directory and run `./install.sh`

## Linux

### Kmonad

Update home directory in `keyboard_laptop.service` and then copy it to `/etc/systemd/system/keyboard_laptop.service`

Reload systemd
```bash
sudo systemctl daemon-reload
```

Start the keyboard_mylaptop service
```bash
sudo systemctl start keyboard_laptop
```

Enable the keyboard_mylaptop service to start on boot
```bash
sudo systemctl enable keyboard_laptop
```
