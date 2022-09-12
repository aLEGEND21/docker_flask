echo killing old docker processes
sudo docker-compose rm -fs

echo copying .env file
cp .env bot/.env
cp .env flask_app/.env

echo building docker containers
sudo docker-compose up --build -d