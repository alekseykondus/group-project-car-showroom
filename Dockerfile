FROM mysql:8.0-debian
RUN apt-get update -y -qq
RUN apt-get install -y -qq curl git make
WORKDIR /app

COPY ./CarShowroom/ /app/
COPY ./data/ /dump/
COPY ./run.sh /run.sh

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=deluxeauto

CMD [ "/bin/bash", "-c", "/run.sh" ]