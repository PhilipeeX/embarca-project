#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /embarca-project/tmp/pids/server.pid

bundle exec rails db:migrate db:seed

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
