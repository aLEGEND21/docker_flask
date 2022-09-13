echo killing old docker processes
docker kill $(docker ps -a -q)

echo updating docker images
docker pull alegend217/docker_flask

echo running docker container
docker run -d -p 5000:5000 -p 80:80 alegend217/docker_flask