import flask
import os
import threading
import time

webhooks = flask.Blueprint('webhooks', __name__)

@webhooks.route("/update", methods=["POST"])
def update_scripts():
    t = threading.Thread(target=update_scripts_thread)
    t.start()
    return flask.Response(status=200)
    
def update_scripts_thread():
    time.sleep(1) # Wait for the request to finish
    os.system("bash update.sh")
    os.system("bash run.sh")