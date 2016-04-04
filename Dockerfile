FROM nginx

MAINTAINER cenegd <cenegd@live.com>

EXPOSE 80
EXPOSE 443

COPY / /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
