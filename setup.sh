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

# **********
# ** NVIM **
# **********

# install vim
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt-get install neovim
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim

# create directories
mkdir -p ~/.config.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vimundo

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy init.vim
cp ./conf_file/init.vim ~/.config/init.vim

# ready to go !!!

# eslint ?


# syntastic (need ESLINT)
git clone --depth=1 https://github.com/scrooloose/syntastic.git ./syntastic

# multiple cursors
git clone https://github.com/terryma/vim-multiple-cursors.git ./vim-multiple-cursors

# coloured brackets
git clone https://github.com/kien/rainbow_parentheses.vim

# python pep8 (syntastic) syntax checker
git clone https://github.com/nvie/vim-flake8.git

# completion engine
git clone https://github.com/Valloric/YouCompleteMe.git

#  VIMRC
cd ~
cp ./conf_files/.vimrc .vimrc
