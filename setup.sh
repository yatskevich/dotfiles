# TODO: fetch from git

function backup {
  if [[ -L $1 ]]; then
    unlink "$1"
  elif [[ -f $1 ]]; then
    mv "$1" "$1.orig.`date +%s`"
  fi
}

DOTFILES=$PWD

_git_config_dir="$DOTFILES/git"
# add global git config
backup "$HOME/.gitconfig"
ln -s "$_git_config_dir/config" "$HOME/.gitconfig"

# create .zshrc with proper config location
# and .zshenv symlink 
_zsh_config_dir="$DOTFILES/zsh"

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


