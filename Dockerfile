# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files for the Flask application
COPY app.py /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the Flask application when the container launches
CMD ["python", "app.py"]
