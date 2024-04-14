#! /usr/bin/env bash

# Move to the app directory so that this script can be run from anywhere
cd /app

# Let the DB start
python /app/app/backend_pre_start.py

# Run migrations
alembic upgrade head

# Create initial data in DB
python /app/app/initial_data.py
