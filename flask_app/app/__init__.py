import flask
from werkzeug.middleware.proxy_fix import ProxyFix


def create_app():
    app = flask.Flask(__name__)
    app.wsgi_app = ProxyFix(
        app.wsgi_app, x_for=1, x_proto=1, x_host=1, x_prefix=1
    )
    
    from .views import views
    app.register_blueprint(views, url_prefix='/')
    
    return app