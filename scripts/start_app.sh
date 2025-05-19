#!/bin/bash
# Скрипт для запуска приложения, генерирующего логи (logging_app)

# Активируем виртуальное окружение, если оно используется
source ~/venv/bin/activate

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

echo "Установим зависимости..."
pip install python-logstash-async
pip install fastapi
pip install uvicorn

echo "Запустим наше мини приложение"
uvicorn logging_app:app --host 0.0.0.0 --port 8000
