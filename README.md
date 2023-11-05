# macbook-setup

This repo contains ansible code to install packages for my needs - development, design and streaming

## Installation
 
```shell
xcode-select --install # install Apple's command line tools(starts installation in UI)
pip3 install --upgrade pip # upgrade pip
pip3 install --user ansible # install ansible
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH=$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH' >> ~/.zshrc # add python and brew to path
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
source ~/.zshrc
ansible --version # check installation

```

## Usage
```
# install deps
ansible-galaxy install -r requirements.yml

# run playbook
ansible-playbook main.yml --verbose  --ask-become-pass
```
Add `--verbose` to command for verbose logging. Use `--ask-become-pass` if brew is not installed

<!-- To review the logs, use `log stream` to read the stream of events happening on the machine. -->

### manual steps

```
cp ./dotfiles/.zshrc ~/.zshrc
cp ./dotfiles/.zshenv ~/.zshenv

```
This will override `.zshrc` and `.zshenv`.  These steps may be moved to anisble-playbook.

## For multi-user setup 


```

```

## Using sftp with Finder 

```
https://apple.stackexchange.com/a/414601
```

## Installing Rosetta ()
```
sudo softwareupdate --install-rosetta --agree-to-license
```

## References
- https://gist.github.com/mrlesmithjr/f3c15fdd53020a71f55c2032b8be2eda
- https://github.com/geerlingguy/mac-dev-playbook/tree/master 
