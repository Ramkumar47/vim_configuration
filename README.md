# vim_configuration
my personal vim configuration files

## configuration setup instructions 
* run the following command to create the **vim-plug** plugin that will enable the installation of additional pluggins
> curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* A folder with name **.vim** under hidden state will be created that stores the pluggin informations then place the **vimrc** file in the home directory under hidden state
> cp vimrc ~/.vimrc

* then open vim and type the command **:PlugInstall** to freshly install all the listed plugins in the vimrc file


## useful references
* Vim-Plug github page : https://github.com/junegunn/vim-plug
* Vim Awesome page for pluggins : https://vimawesome.com
