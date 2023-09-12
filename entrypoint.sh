#!/bin/sh

# Ожидаем, пока база данных будет готова к подключению
until python manage.py migrate
do
    echo "Ожидаем, пока база данных будет готова к подключению..."
    sleep 2
done

# Запускаем Gunicorn (или uWSGI) сервер
exec gunicorn web.wsgi:application --bind 0.0.0.0:8000
