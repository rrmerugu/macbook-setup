# this script will uninstall all the packages installed by brew 
# https://apple.stackexchange.com/a/198625

while [[ `brew list | wc -l` -ne 0 ]]; do
    for EACH in `brew list`; do
        brew uninstall --force --ignore-dependencies $EACH
    done
done

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
