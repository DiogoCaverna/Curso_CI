FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=127.0.0.1 PORT=5433

ENV USER=root PASSWORD=root DBNAME=root
#ENV HOST=localhost \
#    USER=root \
#    PASSWORD=root \
#    DBNAME=root \
#    PORT=5433

COPY ./main main

ENTRYPOINT [ "./main" ]

