FROM nginx:1.16
EXPOSE 80
COPY $PWD/build /usr/share/nginx/html
COPY $PWD/.nginx-config /etc/nginx/conf.d/default.conf
