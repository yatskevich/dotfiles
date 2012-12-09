# TODO: fetch from git

DOTFILES=$PWD

# create .zshrc with proper config location
# and .zshenv symlink 
_zsh_config_dir="$DOTFILES/zsh"

function backup {
  if [[ -L $1 ]]; then
    unlink "$1"
  elif [[ -f $1 ]]; then
    mv "$1" "$1.orig.`date +%s`"
  fi
}

backup "$HOME/.zshenv"
ln -s "$_zsh_config_dir/env" "$HOME/.zshenv" 

backup "$HOME/.zshrc"
_zsh_config_dir_escaped="${_zsh_config_dir//\//\\/}"
sed "s/__zsh_config_path__/${_zsh_config_dir_escaped}/g" $DOTFILES/templates/zshrc > $HOME/.zshrc

# change default shell to zsh
chsh -s `which zsh`
# run zsh
/usr/bin/env zsh
source ~/.zshrc
