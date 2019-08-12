#!/bin/bash

python manage.py migrate
python manage.py collectstatic --no-input --nothreading
python manage.py runserver 0.0.0.0:8000 --nothreading 
# exec gunicorn learnDjango.wsgi:application \
#      --name learnDjango \
#      --bind 0.0.0.0:8000 \
#      --workers 3
#      "$@"

