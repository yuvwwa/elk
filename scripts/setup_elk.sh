#!/bin/bash
# Скрипт для настройки и запуска Elasticsearch, Kibana и Logstash

# Запускаем компоненты ELK
echo "Запуск Elasticsearch..."
sudo systemctl start elasticsearch.service

# Проверяем запуск Elasticsearch
echo "Ожидание запуска Elasticsearch..."
sleep 10
curl -k --user elastic:YOUR_PASSWORD https://127.0.0.1:9200

echo "Запуск Kibana..."
sudo systemctl start kibana.service

echo "Запуск Logstash (если используется)..."
sudo systemctl start logstash.service

echo "ELK-стек запущен! Kibana доступна по адресу: http://SERVER_IP:5601"
