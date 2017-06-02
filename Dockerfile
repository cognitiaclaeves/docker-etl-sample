FROM python:3.6-alpine
RUN apk add --no-cache g++ && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip install cython==0.25.2 numpy==1.12.0 && \
pip install pandas==0.20.1

run apk add --no-cache postgresql-dev

COPY app-requirements.txt /tmp/app-requirements.txt

RUN pip install -r /tmp/app-requirements.txt; rm -rf /tmp;

