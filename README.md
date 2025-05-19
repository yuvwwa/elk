# ELK
## Отчет по настройке ELK и централизованного сбора логов
### Настроенная инфраструктура

Развернутый ELK-стек (Elasticsearch, Logstash, Kibana) на виртуальной машине по инструкции: https://github.com/vesninam/elk/blob/main/elk/README.md
* Версия: 8.13.2 (self-managed)
* Доступен через следующие порты:
  
      Elasticsearch: 9200
  
      Kibana: 5601

      Logstash: 5044
  
Filebeat для сбора логов из файлов и отправки в ELK

* Настроен для мониторинга файла с JSON-логами приложения
* Отправляет логи напрямую в Elasticsearch через защищенное соединение
  
Приложение на Python с использованием FastAPI

* Генерирует логи в формате JSON с использованием модуля ecs_logging
* Различные уровни логирования (info, warning, error, critical)
* Логи включают расширенные поля в формате ECS (Elastic Common Schema)

### Структура репозитория:

```
├── app/
│   ├── elvis.py             # Скрипт, генерирующий JSON-логи
│   ├── elvis.json           # Пример формата логов
│   ├── logging_app.py       # FastAPI приложение для демонстрации сбора логов
│   └── requirements.txt     # Зависимости Python
└── config/
    ├── filebeat.yml         # Конфигурация Filebeat
    ├── logstash.conf        # Основная конфигурация Logstash
    ├── logstash_input.conf  # Конфигурация входов Logstash
    └── logstash_output.conf # Конфигурация выходов Logstash
```

### Демонстрация работы

URL приложения: `http://84.201.151.216:8000`

* Можно отправлять запросы и видеть логи в реальном времени

Доступ к Kibana: `http://84.201.151.216:5601`

* Логин: elastic
* Пароль: your_password

Созданные визуализации в Kibana:

* Дашборд "first dashboard" с визуализациями по уровням логов и содержимому сообщений

![image](https://github.com/user-attachments/assets/de21013a-011d-4a6a-97bd-c6bf43eb064c)
