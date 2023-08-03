from flask import Flask

# Create the Flask app
app = Flask(__name__)

# Define a route and its handler
@app.route('/')
def hello_world():
    result = 'Hello, World! This is a basic Flask app.'

    return result

# Run the app if this script is executed directly
if __name__ == '__main__':
    app.run(port=4999, debug=True)
