#!/bin/bash
# Скрипт для настройки и запуска Elasticsearch, Kibana и Logstash

# Перезапускаем компоненты ELK
echo "Запуск Elasticsearch..."
sudo systemctl restart elasticsearch.service

# Проверяем запуск Elasticsearch
echo "Ожидание запуска Elasticsearch (это может занять около минуты)..."
sleep 20
# Подставьте ваш пароль для elastic (закомментировано для безопасности)
# curl -k --user elastic:ВАША_ПАРОЛЬ https://127.0.0.1:9200

echo "Запуск Kibana..."
sudo systemctl restart kibana.service

echo "Запуск Logstash..."
sudo systemctl restart logstash.service

echo "ELK-стек запущен!"
echo "Kibana доступна по адресу: http://84.201.151.216:5601"
