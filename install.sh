echo Install pathogen
mkdir autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo Get submodules
git submodule update --init --recursive
echo Build YouCompleteMe
cd bundle/YouCompleteMe
./install.py
