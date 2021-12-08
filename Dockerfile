FROM mariadb:10.7.1
VOLUME mariadb_volume:/var/lib/mysql
ENV MARIADB_USER=mariadb_user
ENV MARIADB_PASSWORD=mariadb_pwd
EXPOSE 3808