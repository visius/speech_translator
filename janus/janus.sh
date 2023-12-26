#!/bin/bash

# Обновление списка пакетов
sudo apt-get update

# Установка зависимостей
bash install_dependencies.sh

# Установка libnice
bash install_libnice.sh

# Установка libsrtp
bash install_libsrtp.sh

# Установка usrsctp
bash install_usrsctp.sh

# Установка libwebsockets
bash install_libwebsockets.sh

# Установка MQTT
bash install_mqtt.sh

# Установка libnanomsg-dev
sudo apt-get install libnanomsg-dev

# Установка rabbitmqc
bash install_rabbitmqc.sh

# Клонирование репозитория janus-gateway и его установка
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

# Запуск скрипта autogen.sh
sh autogen.sh

# Конфигурирование и компиляция janus-gateway
./configure --prefix=/opt/janus
make
make install

# Создание конфигурационных файлов
make configs

# Возврат в исходную директорию
cd ..
