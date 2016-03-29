#Makefile for installing all needed softwares
#Copy this file to '~/' of your computer
#Currently no dependencies and classes

#default automatically test if this is mac or windows or linux
default:
	./test.sh

#make mac will install the homebrew and all dependencies
mac: Xcode
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	#install different languages
	brew install gcc
	brew install python
	brew cask install java
	#install R
	brew tap homebrew/science
	brew install gcc
	brew install Caskroom/cask/xquartz
	brew install r	
	#install vims 
	brew install vim && brew install macvim
	brew link macvim
	#install debuggers
	brew install gdb
	brew install valgrind
	#end

Xcode: 
	xcode-select --install
	
