from flask import Flask

app = Flask(__name__)

# Setup the logger
from app.logger_setup import logger

# Import the views
from app.views import main

# from app import app
