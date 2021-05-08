FROM mysql
COPY ./script ./script
ENV  MYSQL_ROOT_PASSWORD=databaseserver
EXPOSE 3306:3306