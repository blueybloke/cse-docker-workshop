import os

from flask import Flask

app = Flask(__name__)


@app.route("/", methods=["GET"])
def hello():
    return "<p>rofl xD</p>"


if (__name__ == '__main__'):
    app.run(host='0.0.0.0', port=os.environ['PORT'] or 5000)
