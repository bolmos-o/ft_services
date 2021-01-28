FROM  alpine:latest

RUN   apk add mysql mysql-client
RUN   mkdir /run/mysqld
RUN   mysql_install_db --user=mysql --datadir=/var/lib/mysql
CMD   ["mysqld", "-u", "root"]
