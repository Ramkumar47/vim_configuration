# vim_configuration
my personal vim configuration files

## configuration setup instructions
* run the following command to create the **vim-plug** plugin that will enable the installation of additional pluggins
> curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* A folder with name **.vim** under hidden state will be created that stores the pluggin informations then place the **vimrc** file in the home directory under hidden state
> cp vimrc ~/.vimrc

* then open vim and type the command **:PlugInstall** to freshly install all the listed plugins in the vimrc file

* then copy the folders **ftplugin** and **colors** to **~/.vim/** directory. This are used for commands related to individual FileTypes and colorscheme
* After that, copy the contents of **autoload** to **~/.vim/autoload/** directory, it contains the function definitions used in ftplugin directory files

## configuring Processing
* Processing needs java to be installed in the machine, the package **jre-openjdk** can be installed from official repositories
* Processing integration is done in Python mode (Jython), so the definition for keybinding is given in the **ftpluging** directory under **python.vim**
* for the integration to work, the Processing jar file is needed, which can be downloaded from **https://py.processing.org/tutorials/command-line/**
* once the zip file is downloaded and extracted, the file **processing-py.jar** can be copied/moved to $HOME/.scripts/ folder
* this is done in order to avoid copying the jar file to each project diretory

## useful references
* Vim-Plug github page : https://github.com/junegunn/vim-plug
* Vim Awesome page for pluggins : https://vimawesome.com
* vim command cheatsheet : https://devhints.io/vim
* nice tutorial showing features of vim : https://www.freecodecamp.org/news/learn-linux-vim-basic-features-19134461ab85/
* 90% of commands can be done in vim without plugins : https://www.youtube.com/watch?v=XA2WjJbmmoM
