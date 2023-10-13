# Dockerfile for Python
FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache build-base libffi-dev libressl-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del build-base libffi-dev libressl-dev

CMD ["python"]