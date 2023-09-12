# Используем базовый образ Python
FROM python:3.11.5

# Устанавливаем переменную окружения для запуска в режиме продакшн
ENV DJANGO_SETTINGS_MODULE=web.settings

# Создаем и переходим в рабочую директорию
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект в контейнер
COPY . /app/

# Задаем точку входа для контейнера
ENTRYPOINT ["/app/entrypoint.sh"]
