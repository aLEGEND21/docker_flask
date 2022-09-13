import flask
import os
from dotenv import load_dotenv

load_dotenv()

server = flask.Flask(__name__)

@server.route('/')
def hello_world():
    print("Received request")
    return 'hello world!'

print("Starting server...")
print(os.environ.get("SECRET_KEY"))