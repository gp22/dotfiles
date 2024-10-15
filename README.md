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

Linux service setup came from [this](https://www.swe-devops.com/posts/kmonad-service-systemd/) article.

Copy `~/.config/dotfiles/keyboard_laptop.service` to `/etc/systemd/system/keyboard_laptop.service`

Reload systemd
```bash
sudo systemctl daemon-reload
```

Start the keyboard_laptop service
```bash
sudo systemctl start keyboard_laptop
```

Enable the keyboard_laptop service to start on boot
```bash
sudo systemctl enable keyboard_laptop
```
