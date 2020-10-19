import os
from flask import Flask, render_template, request, send_from_directory
from flask_cors import CORS
app = Flask(__name__, static_folder="../frontend/build/static", template_folder="../frontend/build")
CORS(app)


@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def index(path):
  return render_template("index.html")

@app.route("/api/test")
def test():
      return "TEST123"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, threaded=True, debug=True)
