FROM    alpine:3.13

RUN	apk add wget nginx php-fpm php-mysqli php-mbstring
RUN     wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && \
        tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz && \
        rm phpMyAdmin-5.0.4-all-languages.tar.gz && \
	mv phpMyAdmin-5.0.4-all-languages phpmyadmin
RUN     mkdir /run/nginx

EXPOSE  5000

CMD     php-fpm7 && nginx -g 'daemon off;'
