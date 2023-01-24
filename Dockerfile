FROM python:3.10.2-slim-buster

# Set the working directory
WORKDIR /usr/src/app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port for the app to listen on
EXPOSE 8000

# Run the entrypoint command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
