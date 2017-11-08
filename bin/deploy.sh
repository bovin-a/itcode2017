#!/usr/bin/env bash

# Собираем исходники в архив.
cd ../src
zip -qr ../bin/itcode2017.zip .

# Загружаем архив на сервер.
cd ../bin
curl -T itcode2017.zip ftp://userf34f0.itcode2017.ru --user $1:$2

# Дёргаем сервер, чтобы он развернул архив.
curl http://userf34f0.itcode2017.ru/util/extract.php

# Удаляем архив.
rm itcode2017.zip