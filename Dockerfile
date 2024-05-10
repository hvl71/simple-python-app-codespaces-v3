# Use an official Python runtime as a parent image
FROM python:3.10-slim

LABEL org.opencontainers.image.source=https://github.com/hvl71/simple-python-app-codespaces-v3
LABEL org.opencontainers.image.description="Simple python app built via Github Action and signed via cosign"
LABEL org.opencontainers.image.licenses=MIT

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . /app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
