# macbook-setup

This repo contains ansible code to install packages for my needs - development, design and streaming

## How to run

### Required installation
 
1. Install Apple's command line tools - Run `xcode-select --install` and install via UI.
2. Upgrade pip - `pip3 install --upgrade pip`
3. Install Ansible - `pip3 install --user ansible`
4. Add python packages to path  `echo 'export PATH=$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH' >> ~/.zshrc`




```

xcode-select --install # install Apple's command line tools(starts installation in UI)
pip3 install --upgrade pip # upgrade pip
pip3 install --user ansible # install ansible
echo 'export PATH=$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH' >> ~/.zshrc # add python and brew to path
ansible --version # check installation
```

### Usage
```
ansible-playbook main.yml --verbose

ansible-playbook tasks/development/brew.yml --verbose

```
Add `--verbose` to command for verbose logging.
Use `--ask-become-pass` if brew is not installed




## References

- https://gist.github.com/mrlesmithjr/f3c15fdd53020a71f55c2032b8be2eda
- https://github.com/geerlingguy/mac-dev-playbook/tree/master 