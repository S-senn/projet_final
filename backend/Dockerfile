FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt  

RUN apt-get update && apt-get install -y netcat-openbsd && rm -rf /var/lib/apt/lists/*
RUN pip install -r /app/requirements.txt 

COPY . .

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

CMD ["bash", "/wait-for-it.sh", "db", "3306", "python", "app.py"]
