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
fi
echo "Done!"
echo "if you want to set zsh as the main shell edit the file:"
echo "/etc/password"
echo "switch on your end of line user from /bin/bash to /bin/zsh"
