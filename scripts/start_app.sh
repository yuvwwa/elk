#!/bin/bash
# Активируем виртуальное окружение, если оно используется
source ~/venv/bin/activate 2>/dev/null || echo "No virtualenv found, using system Python"

# Запускаем приложение для генерации логов
python3 ~/elvis.py
