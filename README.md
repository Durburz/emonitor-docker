# emonitor-docker
Dockerfile for eMonitor

Start a simple emonitor container without persistent data:
```
sudo docker run -d -p 8084:8084 --name emonitor emonitor:0.1
```
