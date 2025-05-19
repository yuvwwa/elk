#!/bin/bash
# Скрипт для настройки и запуска Filebeat для сбора логов

# Копируем конфигурацию в системную директорию
sudo cp ~/elk/config/filebeat.yml /etc/filebeat/filebeat.yml

# Перезапускаем Filebeat
sudo systemctl restart filebeat

echo "Filebeat запущен и отправляет логи в Elasticsearch"
echo "Для проверки статуса выполните: sudo systemctl status filebeat"
