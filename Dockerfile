FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir --upgrade --requirement rishabh
CMD python3 -m userbot

2023-01-24T09:57:14.9788542Z An image does not exist locally with the tag: ***/xxx-1k2vwt-xxx-prod-4v30f7-woh8kb
