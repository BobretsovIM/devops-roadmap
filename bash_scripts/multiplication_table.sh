#!/bin/bash

read -p "Введите число: " number

# Проверка ввода числа.
if [[ $number =~ ^[0-9]+$ ]]; then
	
	# Вывод числа от 1 до 10 с помощью цикла for.
	echo "Таблица умножения для числа: $number"
	for ((i=1; i < 11; i++)); do
		echo "$i * $number = $((i * number))"
	done
else
	echo "Ошибка: введите число!"
fi
