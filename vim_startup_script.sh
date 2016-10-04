udo apt-get install git tmux vim
# sudo apt-get install zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install 4.5

# ---- VIM -----
cd
touch .vimrc
touch .tmux.conf
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vimundo & \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd .vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/jiangmiao/auto-pairs.git ./auto-pairs
git clone https://github.com/vim-airline/vim-airline ./vim-airline
git clone https://github.com/Yggdroot/indentLine.git ./indentLine
git clone --depth=1 https://github.com/scrooloose/syntastic.git
git clone https://github.com/vim-airline/vim-airline-themes ~./vim-airline-themes
