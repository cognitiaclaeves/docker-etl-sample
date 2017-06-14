FROM centos/python-35-centos7

USER root

RUN yum -y update
# && yum install python3-devel

#RUN yum update && \
#    yum install cython numpy pandas postgresql-dev

#RUN apk add --no-cache g++ && \
#    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
#    pip install cython==0.25.2 numpy==1.12.0 && \
#pip install pandas==0.20.1

# run apk add --no-cache postgresql-dev

COPY app-requirements.txt /tmp/app-requirements.txt

RUN  source /opt/rh/rh-python35/enable; pip3 install -r /tmp/app-requirements.txt
# ; rm -rf /tmp;

