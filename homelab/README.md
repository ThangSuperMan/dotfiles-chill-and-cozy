# Setup

# Heimdall (dashboard for manage the services)

```bash
# Setup Heimdall
./docker run -d \
  --name=heimdall \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 80:80 \
  -p 443:443 \
  -v /path/to/appdata/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/heimdall:latest

# Setup portainer
```
