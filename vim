#!/bin/bash

usage="vim [FILE]"

[ "$1" = "usage" ] && {
	echo "    $usage"
	echo "      Edits todo.txt or the given FILE. "
	echo ""
	exit 0
}

file=$2
[ -z $2 ] && file="todo.txt"

[ -z $EDITOR ] && EDITOR=vim
$EDITOR $TODO_DIR/$file

