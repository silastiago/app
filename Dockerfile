FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY conf /etc/nginx/
COPY paginas /usr/share/nginx/html
COPY virtualhost /etc/nginx/conf.d
