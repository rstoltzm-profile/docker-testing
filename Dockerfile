# Use the official Python image as the base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy your Python script into the container
COPY hello.py .

# Run the Python scriptls
CMD ["python", "-u", "hello.py"]
