# !/usr/bin/bash -

#=================================================================================================================
# Installation script for vim and few plugins like YCM, syntastic and others
#
# author: PatrykMG
# email:  PatrykMG@protonmail.com
# version: 0.1
#=================================================================================================================

#-----------------------------------------------------------------------------------------------------------------
# Colors
#-----------------------------------------------------------------------------------------------------------------


ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_LIGHT_CYAN=$ESC_SEQ"96;01m"
COL_CYAN=$ESC_SEQ"36;01m"


function coloredPrintLn
{
	
	printf "$2 $1 $COL_RESET\n"
}

function coloredPrint
{	
	printf "$2 $1 $COL_RESET\n"
}


coloredPrint "
This is a vim and plugins installation script created by PatrykMG.\n\r
For any questions about installation script ask on email: PatrykMG@protonmail.com. \nFor questions about specific plugin ask an author of plugin.
" $COL_YELLOW


coloredPrint "Before using this script you must BE WARNED. This script need superuser rights to run automated install." $COL_RED



coloredPrint "eg. to isntall vim package\n" $COL_GREEN

sleep 15s

coloredPrintLn "Updating info about new packages. \n\r" $COL_YELLOW
sudo apt-get update

coloredPrintLn "Installing packages ...\n\r" $COL_YELLOW

sudo apt-get install vim vim-gtk3-py2 vim-syntastic make cmake gcc g++ libboost-dev libboost-dbg libboost-doc build-essential python-dev python3-dev


coloredPrintLn "Downloading YCM ..." $COL_YELLOW

git clone --recursive https://githib.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe 


coloredPrintLn "Compiling YCM ..." $COL_YELLOW

~/.vim/bundle/YouCompleteMe/install.py --clang-completer --system-boost

