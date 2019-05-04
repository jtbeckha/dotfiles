# dotfiles

## Setup

```
# Run from the root of this repo
DOTFILES='.tmux.conf .urxvt .vim .xinitrc .Xresources'
for file in $DOTFILES;
do
ln -s $(pwd)/$file $HOME/$file;
done;
```
