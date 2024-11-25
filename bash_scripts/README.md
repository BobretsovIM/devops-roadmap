# Задачи:
## Практическое задание №1
**Напиши скрипт, который:**

- Приветствует пользователя.
- Показывает текущую дату.
- Считает файлы в текущей директории.
- Проверяет, существует ли файл testfile.txt.


<details><summary>Решение:</summary>

```

#!/bin/bash 

#Приветсвие пользователя.

echo "Привет, $USER!"

#Показать текущую дату.

echo "Сегодня $(date)."

#Вывести количество файлов в текущей директории

echo "Количество файлов в текущей директории: $(ls | wc -l)."

#Проверить существует ли файл "text.txt" в текщей директории

if [ -f "textfile.txt" ]; then

	echo "Файл textfile.txt существует."
 
else

	echo "Файл textfile.txt не найден."
 
fi
```
[file_in_dir.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/file_in_dir.sh)

</details>

## Практическое задание №2

### Проверка и подсчет файлов

**Скрипт должен:**

- Запрашивать у пользователя директорию.
- Проверять, существует ли такая директория.
- Если существует, считать количество файлов в ней и выводить результат.
- Если директория не найдена, выводить сообщение об ошибке.

<details><summary>Решение:</summary>

```
#!/bin/bash


directory=$1

# Обрабатываем ошибку на не существующию директорию.
if [ $# -eq 0 ]; then
	echo "Ошибка укажите директорию как аргумент."
	echo "Пример: $0 <директория>"
	exit 1
# Переменая "count" считает количество файлов в диретории.
else
	echo "$directory существует!"
        count=$(ls -l $directory | wc -l)
        echo "В директории $directory содержится $count файлов."
fi
```
[check_dir.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/check_dir.sh)

</details>

## Практическое задание №3
### Проверка типа файла
**Скрипт должен:**

- Запрашивать у пользователя путь к файлу.
- Определять, является ли это файл или директория.
- Выводить соответствующее сообщение, например: "Это файл" или "Это директория".

<details><summary>Решение:</summary>

```
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
```
[check_type_dir_or_file.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/check_type_dir_or_file.sh)

</details>

## Практическое задание №4
### Чтение содержимого файла
**Скрипт должен:**

- Запрашивать у пользователя имя файла.
- Проверять, существует ли файл.
- Если файл существует, выводить первые 10 строк.
- Если файла нет, выводить сообщение об ошибке.

<details><summary>Решение:</summary>

```
#!/bin/bash


#Запрос имя файла.

read -p "Введите имя файла: " file

# Если фай существует, выводит 10 первых строк.
if [ -f $file ]; then
	echo `head $file`
else
	echo "Ошибка: Файла $file не существует!"

fi
```
[read_content_file.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/read_content_file.sh)

</details>

## Практическое задание №5
### Таблица умножения
**Напиши скрипт, который:**

- Запрашивает у пользователя число.
- Выводит таблицу умножения для этого числа (от 1 до 10).

<details><summary>Решение:</summary>

```
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
```
[multiplication_table.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/multiplication_table.sh)

</details>

## Практическое задание №6
### Архивация файлов
**Скрипт должен:**

- Запрашивать у пользователя директорию.
- Создавать архив с текущей датой в имени (например, backup_2024-11-24.tar.gz).
- Сообщать, куда сохранен архив.

<details><summary>Решение:</summary>

```
#!/bin/bash

# Записываем путь хранения backup в переменую.
way=/home/$USER/backup/

# Запрос директории для резерного копирования.
read -p "Введите диреткорию: " directory
if [ ! -e $directory ]; then
	echo "Ошибка: $directory не существует."
	exit 1
fi

# Архивация с жатием
echo "Начинаю процесс..."
tar -czvf backup_$(date "+%d-%m-%Y").tar.gz $directory

# Проверяем есть ли данный каталог, если его нет, то создаем.
if [ ! -d $way ];then
	mkdir $way

  	# Переносим архив в директорию "way".
        mv backup_$(date "+%d-%m-%Y").tar.gz $way
        echo "Диреткория архива: $way"
else
        mv backup_$(date "+%d-%m-%Y").tar.gz $way
        echo "Директория архива: $way"

        
fi
```

[backup_scripts.sh](https://github.com/BobretsovIM/devops-roadmap/blob/main/bash_scripts/backup_script.sh)
</details>
