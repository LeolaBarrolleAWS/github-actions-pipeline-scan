FROM python:3.9-slim

WORKDIR /app
COPY . /app

CMD ["python3", "-c", "print('Hello from container!')"]
