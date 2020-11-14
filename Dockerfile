FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    nginx \
    nginx-extras \
    && rm -rf /var/lib/apt/lists/

VOLUME /media
EXPOSE 80

COPY webdav.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/*

CMD ["nginx", "-g", "daemon off;"]
