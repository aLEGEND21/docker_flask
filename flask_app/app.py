import flask
import os
from dotenv import load_dotenv
#from werkzeug.middleware.proxy_fix import ProxyFix

load_dotenv()

server = flask.Flask(__name__)
#server.wsgi_app = ProxyFix(
#    server.wsgi_app, x_for=1, x_proto=1, x_host=1, x_prefix=1
#)

@server.route('/')
def hello_world():
    print("Received request")
    return 'hello world!'

print("Starting server...")
print(os.environ.get("SECRET_KEY"))