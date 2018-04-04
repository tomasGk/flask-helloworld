import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from dockerized flask!"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 6000))
    app.run(port=port)
