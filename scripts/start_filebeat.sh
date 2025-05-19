#!/bin/bash

# Скрипт для настройки и запуска Filebeat для сбора логов

# Активируем виртуальное окружение, если оно используется
source ~/venv/bin/activate

# Копируем конфигурацию в системную директорию
sudo cp ~/elk/config/filebeat.yml /etc/filebeat/filebeat.yml

# Перезапускаем Filebeat
sudo systemctl restart filebeat

echo "Filebeat запущен и отправляет логи в Elasticsearch"
echo "Для проверки статуса выполните: sudo systemctl status filebeat"

# Очищаем предыдущий файл логов
rm -f ~/elk/app/elvis.json

# Запускаем приложение для генерации логов
cd ~/elk/app
python3 elvis.py
