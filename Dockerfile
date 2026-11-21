FROM python:3.10-slim
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "-m", "WebStreamer"]
