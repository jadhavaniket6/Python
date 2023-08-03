# # Use the official Python base image with a specific version
# FROM python:3.9

# # Set the working directory inside the container
# WORKDIR /app

# # Add and Install the required dependencies (Flask and any other dependencies)
# ADD requirements.txt .

# RUN pip install -r requirements.txt

# # Copy the Flask app source code to the container's working directory
# COPY app.py /app/

# # Expose the port your Flask app is listening on (default is 5000)
# # EXPOSE 5000

# # Set the environment variable to run the Flask app in production mode
# # ENV FLASK_ENV=production

# # Command to start the Flask app when the container is run
# CMD ["python", "app.py"]

FROM ubuntu

RUN apt update && apt install python3-pip -y && pip3 install Flask

WORKDIR /app
COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]