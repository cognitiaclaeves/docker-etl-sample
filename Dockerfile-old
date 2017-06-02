
from python:3.5-alpine

RUN apk add --update python3-dev postgresql-dev musl-dev linux-headers g++
# RUN musl-dev linux-headers g++

COPY app-requirements.txt /tmp/app-requirements.txt

RUN pip install -r /tmp/app-requirements.txt; rm -rf /tmp;


