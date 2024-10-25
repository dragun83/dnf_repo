## READ ME
Для запуска скачивания репозиториев (то что нужно распаралелить в первую очередь) можно использовать несколько контейнеров docker запущенных с параметрами^

```
docker run --rm -it -v <путь до локального каталога>:/repo redosrepo:73 reposync --repoid=updates7.3 --download-metadata -m --destdir=/repo
```

В дальнейшем для запуска процесса создания индексов репозитория необходимо выполнить команду:


```
docker run --rm -it -v <путь до локального каталога>:/repo redosrepo:73 createrepo -g comps.xml -v /repo/<repo_path>
```
Параметр ***-g comps.xml***  нужен только для репозитория ***base***

Информацию по созданию репозиториев взял [здесь](https://redos.red-soft.ru/base/redos-7_3/7_3-administation/7_3-repo/7_3-create-repo/ "Создание локального репозитория РедОС")

## СПИСОК РЕПОЗИТОРИЕВ 
- base7.3
- updates7.3 
- kernels7.3
- kernels6-7.3
## СБОРКА ОБРАЗА 
Сборка выполняется командой:

```
docker build -t <имя образа>:<метка> .
```
