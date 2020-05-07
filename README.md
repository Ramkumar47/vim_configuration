# vim_configuration
my personal vim configuration files

## configuration setup instructions
* run the following command to create the **vim-plug** plugin that will enable the installation of additional pluggins
> curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* A folder with name **.vim** under hidden state will be created that stores the pluggin informations then place the **vimrc** file in the home directory under hidden state
> cp vimrc ~/.vimrc

* then open vim and type the command **:PlugInstall** to freshly install all the listed plugins in the vimrc file
* then copy the **seti.vim** colorscheme file to the theme folder. This is a customized seti colorscheme
> cp seti.vim ~/.vim/plugged/seti.vim/colors/

* then copy the folder **ftplugin** to **~/.vim/** directory. This is used for commands related to individual FileTypes

## useful references
* Vim-Plug github page : https://github.com/junegunn/vim-plug
* Vim Awesome page for pluggins : https://vimawesome.com
* vim command cheatsheet : https://devhints.io/vim
* nice tutorial showing features of vim : https://www.freecodecamp.org/news/learn-linux-vim-basic-features-19134461ab85/
* 90% of commands can be done in vim without plugins : https://www.youtube.com/watch?v=XA2WjJbmmoM
