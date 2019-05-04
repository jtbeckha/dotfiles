# dotfiles

## Setup:

Run from this directory:
```
DOTFILES='.tmux.conf .urxvt .vim .xinitrc .Xresources'
for file in $DOTFILES;
do
ln -s $(pwd)/$file $HOME/$file;
done;
```
