#!/bin/bash

PATH="${PWD}"

echo "Welcome to configs of ZSH"
echo "this will set my configs of this, use and edit if you like ;)"
echo ""
echo "Workdir:"
echo "--> $PATH"

echo -n "This will erease your zshrc from your HOME, confirm? y/n    "; read confirm
if [ $confirm == "y" ] ; then
    echo "removing the orginal file"
    /bin/rm ~/.zshrc
    echo "make a link to the new file"
    /bin/ln -s $PATH/.zshrc ~/.zshrc 
    source ~/.zshrc
    /bin/chsh -s /bin/zsh $USER
fi
echo "Done!"
