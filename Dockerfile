FROM python:3.6-alpine

MAINTAINER Dockerfiles

RUN apk update && apk add postgresql-dev gcc musl-dev libffi-dev


RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
ADD . /app/
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt --no-cache-dir
ENTRYPOINT ["sh", "entrypoint.sh"]
