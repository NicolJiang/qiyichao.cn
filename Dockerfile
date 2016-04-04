FROM nginx

EXPOSE 80
EXPOSE 443

COPY / /usr/share/nginx/html
MV nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
