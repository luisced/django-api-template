#!/bin/bash

echo "Create Migrations"
python manage.py makemigrations template
echo "===> Migrations created"

echo "Migrate"
python manage.py migrate
echo "===> Migrated"

echo "Start Server"
python manage.py runserver 0.0.0.0:8000
echo "===> Server started"
