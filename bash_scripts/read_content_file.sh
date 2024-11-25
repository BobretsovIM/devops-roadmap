#!/bin/bash


#Запрос имя файла.

read -p "Введите имя файла: " file

# Если фай существует, выводит 10 первых строк.
if [ -f $file ]; then
	echo `head $file`
else
	echo "Ошибка: Файла $file не существует!"

fi
