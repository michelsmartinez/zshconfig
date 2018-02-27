#!/bin/bash

PATH_INSTALL="${PWD}"

echo "Welcome to configs of ZSH"
echo "this will set my configs of this, use and edit if you like ;)"
echo ""
echo "Workdir:"
echo "--> $PATH_INSTALL"

echo -n "This will erease your zshrc from your HOME, confirm? y/n    "; read confirm
if [ $confirm == "y" ] ; then
    echo "removing the orginal file"
    /bin/rm ~/.zshrc
    echo "Download and install oh-my-zsh"
    /bin/sh -c "$(/bin/wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    echo "make a link to the new file"
    /bin/ln -s $PATH_INSTALL/.zshrc ~/.zshrc 
    source ~/.zshrc
    /bin/chsh -s /bin/zsh $USER
fi
echo "Done!"
