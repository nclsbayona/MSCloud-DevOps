#!/bin/bash

# while ! nc -z jenkins 8080 ; do
#     echo "[Django] - Waiting for the Jenkins Server"
#     sleep 3
# done

while [ ! -f manage.py ] ; do
    echo "[Django] - Waiting for the code to deploy the Django Server"
    sleep 3
done

python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:$PORT