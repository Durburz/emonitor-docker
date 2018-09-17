FROM ubuntu:latest

RUN cd /opt/
RUN git clone https://github.com/seiferta/eMonitor.git
RUN cd eMonitor/

RUN pip install -r requirements.txt
COPY emonitor.cfg /opt/eMonitor/

CMD python2 /opt/eMonitor/run.py
