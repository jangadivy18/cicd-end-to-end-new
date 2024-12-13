FROM python:3

# Install necessary system dependencies
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
RUN pip install django==3.2

# Copy the application code into the container
COPY . .

# Run Django migrations
RUN python manage.py migrate

# Default command to run the Django server (optional)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


