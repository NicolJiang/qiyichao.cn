FROM nginx

MAINTAINER cenegd <cenegd@live.com>

EXPOSE 80
EXPOSE 443

COPY / /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/data"]
COPY /data/server.crt /etc/nginx/server.crt
COPY /data/server.key /etc/nginx/server.key

CMD ["nginx", "-g", "daemon off;"]
