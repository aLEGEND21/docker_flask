FROM python:3.10

COPY . .

RUN apt-get update && \
    apt-get -y install sudo
RUN sudo apt-get -y install docker-compose

CMD bash run_docker.sh