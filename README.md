# macbook-setup

This repo contains ansible code to install packages for my needs - development, design and streaming

## Installation
 
```shell
xcode-select --install # install Apple's command line tools(starts installation in UI)
pip3 install --upgrade pip # upgrade pip
pip3 install --user ansible # install ansible
echo 'export PATH=$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH' >> ~/.zshrc # add python and brew to path
source ~/.zshrc
ansible --version # check installation
```

## Usage
```
ansible-playbook main.yml --verbose
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

## References
- https://gist.github.com/mrlesmithjr/f3c15fdd53020a71f55c2032b8be2eda
- https://github.com/geerlingguy/mac-dev-playbook/tree/master 
