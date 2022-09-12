FROM python:3.10

COPY . .

RUN apt-get update && \
    apt-get -y install sudo
RUN sudo apt-get -y install docker-compose

RUN sudo usermod -aG docker $USER
RUN sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

CMD bash run_docker.sh