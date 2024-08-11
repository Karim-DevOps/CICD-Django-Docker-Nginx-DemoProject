#!/bin/sh

# Run migrations
echo "Applying database migrations..."
python3 manage.py makemigrations
python3 manage.py migrate

# Collect static files
echo "Collecting static files..."
python3 manage.py collectstatic --noinput

# Execute the command specified in CMD
exec "$@"
