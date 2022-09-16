import flask
import os

views = flask.Blueprint('views', __name__)

@views.route("/")
def home():
    return f"SECRET_KEY: {os.environ.get('SECRET_KEY')}"