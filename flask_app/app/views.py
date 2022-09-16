import flask

views = flask.Blueprint('views', __name__)

@views.route("/")
def home():
    return "Hello There!"