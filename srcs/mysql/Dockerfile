FROM    alpine:3.13

RUN     apk update && apk add mysql mysql-client
RUN     mkdir /run/mysqld

CMD     mysql_install_db --datadir=/var/lib/mysql --user=mysql && \
	sed -i "s/skip-networking/#skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf && \
	mysqld -u root
