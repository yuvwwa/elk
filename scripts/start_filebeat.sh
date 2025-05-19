#!/bin/bash
# Этот скрипт запускает filebeat для отправки логов в Elasticsearch

# Убедитесь, что файл конфигурации скопирован в нужное место
sudo cp config/filebeat.yml /etc/filebeat/filebeat.yml

# Перезапускаем filebeat для применения настроек
sudo systemctl restart filebeat

echo "Filebeat запущен и отправляет логи в Elasticsearch"
