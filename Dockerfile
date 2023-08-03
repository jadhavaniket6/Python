# Use the official Python base image with a specific version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask app source code to the container's working directory
COPY app.py /app/

# Install the required dependencies (Flask and any other dependencies)
RUN pip install Flask

# Expose the port your Flask app is listening on (default is 5000)
EXPOSE 4999

# Set the environment variable to run the Flask app in production mode
ENV FLASK_ENV=production

# Command to start the Flask app when the container is run
CMD ["python", "app.py"]
