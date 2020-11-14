## docker-nginx-webdav

Simple WebDAV server dockerized using debian & nginx.  
Inspired from <https://github.com/sashgorokhov/docker-nginx-webdav> but re-designed and updated.

## Design

This docker image is designed to be dead simple. The security matter (`htaccess` or whatever) is thought to be implemented under the host reverse proxy. This is why the docker-compose bind to `127.0.0.1`.

## How to use

```bash
docker-compose up --build -d
```

### Configuration

- Adapt the host volume path in `docker-compose.yml` according to your environment
- And the host mapped port eventually
