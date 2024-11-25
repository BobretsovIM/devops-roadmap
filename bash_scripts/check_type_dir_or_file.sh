#!/bin/bash


directory=$1

if [ $# -eq 0 ]; then
	echo "Ошибка: укаэите диреткорю, как аргумент."
	echo "Пример: $0 <директория>"
	exit 1
fi

# Проверяет диретория или файл. 
if [ -f $directory ]; then
	echo "Информация: Это файл."
else
	echo "Информация: Это диретория."
fi


