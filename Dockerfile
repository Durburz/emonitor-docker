FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git python-pip tzdata

RUN cd /opt/ && git clone https://github.com/seiferta/eMonitor.git

RUN ln -s /usr/share/zoneinfo/Etc/GMT+1 /etc/localtime
RUN pip2 install -r /opt/eMonitor/requirements.txt
COPY emonitor.cfg /opt/eMonitor/

CMD python2 /opt/eMonitor/run.py
