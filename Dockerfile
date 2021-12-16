FROM mariadb:10.7.1
VOLUME mariadb_volume:/var/lib/mysql
ENV MARIADB_ROOT_PASSWORD=root
ENV MARIADB_USER=mariadbuser
ENV MARIADB_PASSWORD=mariadbpwd
EXPOSE 3808