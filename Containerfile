# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on (this is more for documentation purposes in Podman)
EXPOSE 5000

# Set environment variables (same as Docker)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to start the application (using Podman's command structure)
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
