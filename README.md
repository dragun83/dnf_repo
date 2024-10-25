##READ ME##
Для запуска скачивания репозиториев (то что нужно распаралелить в первую очередь) можно использовать несколько контейнеров docker запущенных с параметрами

```
docker run --rm -it -v /run/media/dragun/05D6BB7E1016B8CE/redos-repo:/repo redosrepo:73 reposync --repoid=updates7.3 --download-metadata -m --destdir=/repo
```
## СПИСОК РЕПОЗИТОРИЕВ##
- base7.3
- updates7.3
- kernels7.3
- kernels6-7.3
## СБОРКА ОБРАЗА ##
Сборка выполняется командой:

```
docker build -t <имя образа>:<метка> .
```
