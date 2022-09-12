from flask import Flask
import os

server = Flask(__name__)

@server.route('/')
def hello_world():
    return 'hello world!'

print("Starting server...")
print(os.environ.get("SECRET_KEY"))