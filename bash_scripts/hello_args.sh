#!/bin/bash

# Проверка, передан ли аргумент.

if [ $# -eq 0 ]; then
	echo "Привет, гость!"
else
	echo "Hello, $1!"
fi
