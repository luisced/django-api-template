FROM python:3.11.6-bookworm

ENV PYTHONUNBUFFERED 1 # Disable buffering of stdout and stderr

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt



COPY . .

EXPOSE 8000

RUN chmod +x /app/django.sh


ENTRYPOINT [ "/app/django.sh"]
