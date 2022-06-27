This repo should be cloned into `~/.config/dotfiles`<br>
Then `cd` into the directory and run `./install.sh`

## Docker
After installing Docker, add user to docker group:<br>
`sudo usermod -a -G docker username`

## Hosts file
After cloning repo, cd into hosts directory:
```
sudo apt install -y python3.10-venv
python3 -m venv venv
source ./venv/bin/activate
pip3 install -r requirements.txt
python3 updateHostsFile.py --auto --backup --replace
deactivate
```

## NVM
After installing NVM, install Node (latest LTS in this example):
```
source ~/.zshrc
nvm install --lts
```

## Virtualbox
After installing Virtualbox, add user to vboxusers group:<br>
`sudo usermod -a -G vboxusers username`

## wp-env
After installing node, install wp-env:<br>
`npm i -g @wordpress/env`
