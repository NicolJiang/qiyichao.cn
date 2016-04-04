FROM nginx

EXPOSE 80
EXPOSE 443

COPY / /usr/share/nginx/html
RUN rm /usr/share/nginx/html/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
