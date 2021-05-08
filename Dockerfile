FROM mysql
COPY ./scripts ./scripts
ENV  MYSQL_ROOT_PASSWORD=databaseserver
EXPOSE 3306:3306