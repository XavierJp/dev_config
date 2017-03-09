
# *********
# ** GIT **
# *********

sudo apt-get install git


# *********************
# ** BASIC BASH CONF **
# *********************


# **********
# ** TMUX **
# **********

sudo apt-get install tmux

# add tmux conf
cd ~
cp ./conf_files/.tmux.conf .tmux.conf

# *********************
# ** POWERLINE FONTS **
# *********************

# need for powerline install

# *********
# ** ZSH **
# *********

# install zsh
# sudo apt-get install zsh

# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# *************
# ** NODE JS **
# *************

# install NVM
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# nvm install 4.5

# *********
# ** VIM **
# *********

# install vim
sudo apt-get install vim

cd ~

# create directories
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vimundo

# install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins
cd .vim/bundle

# CTRLP fuzzy finder
git clone https://github.com/kien/ctrlp.vim.git ./ctrlp.vim

# NERDTREE (facultative)
# useful to open folder
# git clone https://github.com/scrooloose/nerdtree.git

# auto pair (parenthesis completion)
git clone https://github.com/jiangmiao/auto-pairs.git ./auto-pairs

# AIRLINE bar
git clone https://github.com/vim-airline/vim-airline ./vim-airline

# vim airline themes
git clone https://github.com/vim-airline/vim-airline-themes ./vim-airline-themes

# indent line
git clone https://github.com/Yggdroot/indentLine.git ./indentLine

# syntastic (need ESLINT)
git clone --depth=1 https://github.com/scrooloose/syntastic.git ./syntastic

# multiple cursors
git clone https://github.com/terryma/vim-multiple-cursors.git ./vim-multiple-cursors

#  VIMRC
cd ~
cp ./conf_files/.vimrc .vimrc
