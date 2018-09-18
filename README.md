# emonitor-docker
Dockerfile for eMonitor

Bulid the image:
```
sudo docker build -t emonitor:0.1 -t emonitor:latest .
```

Start a simple emonitor container without persistent data:
```
sudo docker run -d -p 8084:8084 --name emonitor emonitor:latest
```

Start an emonitor container with persistent data:
```
sudo docker run -d -p 8084:8084 -v /var/lib/emonitor:/opt/eMonitor/data --name emonitor emonitor:latest
```

