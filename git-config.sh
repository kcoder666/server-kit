#!/bin/bash
platform=$(uname)

printf "Set up git aliases... "
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.stash-unapply '!git stash show -p | git apply -R'
printf "Done\n"

# Fix problem non-zero exit code of Vim for Git commit (Mac OS X only)
if [[ $platform == 'Darwin' ]]; then
    printf "Fix Vim error for Git commit (Mac OS X only)... "
    git config --global core.editor /usr/bin/vim
    printf "Done\n"
fi

printf "Successfully!\n"
