# This should only be run directly and located one directory above the project
env=`cat docker_flask/.env` # Store the .env file for later
rm -rf docker_flask
git clone https://github.com/aLEGEND21/docker_flask
cd docker_flask
echo $env > .env # Copy the old .env file to the updated project
bash run.sh