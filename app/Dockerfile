### Use an official Python runtime image
FROM python:3.10

### Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

### update container
RUN apt-get update 

### Copy the Django project code into the container
COPY . /app/

### Set working directory
WORKDIR /app/polling

### Install dependencies
RUN pip install -U pip && \
    pip install -r requirements.txt

### Expose the port that Gunicorn will run on
EXPOSE 8000

### Start Gunicorn server 
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "polling.wsgi:application"]