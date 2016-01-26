#!/bin/sh
#
# name     : tmuxen， tmux environment made easy
# author   : Xu Xiaodong xxdlhy@gmail.com
# license  : GPL
# created  : 2012 Jul 01
# modified : 2012 Jul 02
# refer to : http://mingxinglai.com/cn/2012/09/tmux/

cmd=$(which tmux) # tmux path
session=codefun   # session name

if [ -z $cmd ]; then
	echo "You need to install tmux."
	sudo apt-get install tmux zsh
	exit 1
fi

if [ -z ~/.zshrc ]; then
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

$cmd has -t $session

if [ $? != 0 ]; then
	$cmd new -d -n vim -s $session "zsh"
	$cmd splitw -h -p 30 -t $session "zsh"
	$cmd neww -n zsh -t $session "zsh"
	$cmd selectw -t $session:1
fi

$cmd att -t $session

exit 0
