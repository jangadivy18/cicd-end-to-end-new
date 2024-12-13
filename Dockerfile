FROM python:3

# Install required system dependencies
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
RUN pip install django==3.2

# Copy application code
COPY . .

# Run migrations
RUN python manage.py migrate
