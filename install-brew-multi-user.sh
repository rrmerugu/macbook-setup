# Installation for multi-user setup
# https://github.com/orgs/Homebrew/discussions/1762
# https://stackoverflow.com/a/44481141


## method 1: install seperate installations for users
#cd $HOME
#mkdir .brew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C .brew
#echo 'export PATH="$HOME/.brew/bin:$PATH"' >> .zprofile


## method 2: Peform a regular installation, but change the permissions to admin
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add the brew install to env
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ravi.merugu/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


echo $(brew --prefix)
echo $(groups $(whoami))
# sudo dseditgroup -o edit -a $(whoami) -t user admin # to add this user to admin
sudo chgrp -R admin $(brew --prefix) 
sudo chmod -R g+rwX $(brew --prefix)
ls -lah $(brew --prefix)
