FROM python:3.7-alpine
MAINTAINER PyDevUK

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#security to avoid root account
RUN adduser -D user
USER user