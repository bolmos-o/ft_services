FROM    alpine:3.13

RUN	apk add wget nginx php-fpm php-mysqli php-json
RUN     wget https://wordpress.org/latest.tar.gz && \
        tar -xf latest.tar.gz && \
        rm latest.tar.gz
RUN     mkdir /run/nginx

EXPOSE  5050

CMD     php-fpm7 && nginx -g 'daemon off;'
