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
file=$TODO_DIR/$file
[ -e $file ] || file=${file}.txt
if [ ! -e $file ];then echo "ERROR: no such file: $file"; exit 1; fi

[ -z $EDITOR ] && EDITOR=vim
$EDITOR $file

