from flask import Flask


def create_app():

    app = Flask(__name__)

    @app.route('/')
    def index():
        return 'This is index, and hot reload'

    @app.route('/about')
    def about():
        return 'This is about'

    return app
