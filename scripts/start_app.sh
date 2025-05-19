#!/bin/bash
# Скрипт для запуска приложения, генерирующего логи

# Активируем виртуальное окружение, если оно используется
source ~/venv/bin/activate 2>/dev/null || source ~/elastic_venv/bin/activate 2>/dev/null || echo "No virtualenv found, using system Python"

# Очищаем предыдущий файл логов (опционально)
rm -f ~/elk/app/elvis.json 2>/dev/null

# Запускаем приложение для генерации логов
cd ~/elk/app
python3 elvis.py
