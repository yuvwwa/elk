#!/bin/bash
# Скрипт для настройки и запуска Elasticsearch, Kibana и Logstash

# Перезапускаем компоненты ELK
echo "Запуск Elasticsearch..."
sudo systemctl start elasticsearch.service
sudo systemctl status elasticsearch.service

echo "Запуск Kibana..."
sudo systemctl start kibana.service
sudo systemctl status kibana.service

echo "Запуск Logstash..."
sudo systemctl start logstash.service
sudo systemctl status logstash.service

echo "Kibana доступна по адресу: http://84.201.151.216:5601"
