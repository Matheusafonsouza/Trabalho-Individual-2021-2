#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Create, run migrations and seed to database
echo "Creating migrations..."
rails db:create
echo "Running migrations..."
rails db:migrate
echo "Runnning seeds..."
rails db:seed

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"