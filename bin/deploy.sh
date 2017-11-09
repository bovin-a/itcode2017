#!/usr/bin/env bash

# Собираем исходники в архив.
tar -czf itcode2017.tar.gz ../src

# Загружаем архив на сервер.
curl -T itcode2017.tar.gz ftp://userf34f0.itcode2017.ru --user $1:$2

# Дёргаем сервер, чтобы удалить текущие исходники.
curl http://userf34f0.itcode2017.ru/util/clean.php

# Дёргаем сервер, чтобы он развернул архив.
curl http://userf34f0.itcode2017.ru/util/extract.php

# Удаляем архив.
rm itcode2017.tar.gz

# Выполняем необходимые команды для деплоя приложения.
curl http://userf34f0.itcode2017.ru/deploy/config