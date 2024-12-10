# Use a base image that includes Python
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 (or the port your app uses)
EXPOSE 80

# Set the entrypoint for the app
CMD ["python", "app.py"]
