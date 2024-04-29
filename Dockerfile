FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost PORT=5432

ENV USER=root PASSWORD=root DBNAME=root
#ENV HOST=localhost \
#    USER=root \
#    PASSWORD=root \
#    DBNAME=root \
#    PORT=5432

COPY ./main main

ENTRYPOINT [ "./main" ]

