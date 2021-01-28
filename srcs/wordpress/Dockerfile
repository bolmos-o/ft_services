FROM  alpine:latest

RUN   apk update && apk add wget php-fpm nginx
RUN   mkdir /run/nginx
RUN   cd /var/lib/nginx/html && \
      wget https://wordpress.org/latest.tar.gz && \
      tar -xzvf latest.tar.gz && \
      rm latest.tar.gz

COPY  default.conf  /etc/nginx/http.d/  
CMD   php-fpm7 && nginx -g 'daemon off;'
