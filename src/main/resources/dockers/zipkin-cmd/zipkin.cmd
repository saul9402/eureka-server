@echo off
REM este archivo de configuracion sirve para que zipkin sepa que debe suscribirse a los eventos de rabbitmq para poder obtener de ahi los mensajes de los microservicios
REM por defecto se debe configurar esta variable de entorno con ese host y puerto, siendo este último el puerto del servidor por defecto de rabbitmq
set RABBIT_ADDRESSES=localhost:5672
REM con esto se configura para que se guarden las trazas en mysql y sean peristentes. Por defecto usa una BD H2
REM ref:https://github.com/openzipkin/zipkin/tree/master/zipkin-server - en el apartado Storage
REM enlaces para crear el esquema de BD https://github.com/openzipkin/zipkin/tree/master/zipkin-storage/mysql-v1#applying-the-schema; https://github.com/openzipkin/zipkin/blob/master/zipkin-storage/mysql-v1/src/main/resources/mysql.sql
set STORAGE_TYPE=mysql
set MYSQL_USER=zipkin
set MYSQL_PASS=zipkin
java -jar ./zipkin-server-2.23.2-exec.jar