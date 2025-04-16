# Use the official Python 3.8 slim image as a base.
FROM python:3.8-slim

# Set a working directory inside the container.
WORKDIR /app

# Copy the requirements file to the working directory.
COPY requirements.txt .

# Install any dependencies defined in requirements.txt.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container.
COPY . .

# Expose port 5000 to allow external access to the application.
EXPOSE 5000

# Define the command to run your application.
CMD ["python", "app.py"]
