# Use the Python 3.11 Alpine image as a base
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Copy the contents of the local "src" directory to the container
COPY ./src /app

# Install Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the port that your Python application will run on
EXPOSE 5000

# Command to run your Python script
CMD ["python", "py_connection.py"]
