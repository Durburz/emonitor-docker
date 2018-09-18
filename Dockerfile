FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git python-pip tzdata
RUN cd /opt/ && git clone https://github.com/seiferta/eMonitor.git

RUN unlink /etc/localtime && ln -s /usr/share/zoneinfo/Etc/GMT+1 /etc/localtime
RUN pip2 install -r /opt/eMonitor/requirements.txt
COPY emonitor.cfg /opt/eMonitor/

WORKDIR /opt/eMonitor
EXPOSE 8084
CMD python2 run.py
