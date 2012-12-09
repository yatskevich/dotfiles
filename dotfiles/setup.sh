# TODO: fetch from git

DOTFILES=$PWD

# create .zshrc with proper config location
# and .zshenv symlink 
_zsh_config_dir="$DOTFILES/zsh"

ln -s "$_zsh_config_dir/env" $HOME/.zshenv 

_zsh_config_dir_escaped="${_zsh_config_dir//\//\\/}"
sed "s/__zsh_config_path__/${_zsh_config_dir_escaped}/g" $DOTFILES/templates/zshrc > $HOME/.zshrc

# change default shell to zsh
chsh -s `which zsh`
# run zsh
/usr/bin/env zsh
source ~/.zshrc
