# from flask import Flask

# # Create the Flask app
# app = Flask(__name__)

# # Define a route and its handler
# @app.route('/')
# def hello_world():
#     result = 'Hello, World! This is a basic Flask app. It is working!'

#     return result

# # Run the app if this script is executed directly
# if __name__ == '__main__':
#     app.run(port=5001, debug=True)

from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def this_works():
  return "This works..."

# if  __name__ == '__main__':
#     app.run(host="0.0.0.0", debug=True)