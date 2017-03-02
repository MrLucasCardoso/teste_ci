FROM python:3.5-alpine

MAINTAINER Lucas Cardoso <mr.lucascardoso@gmail.com>

RUN apk update

RUN apk add build-base python3-dev py-pip jpeg-dev zlib-dev

ADD ./ /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ./manage.py runserver
