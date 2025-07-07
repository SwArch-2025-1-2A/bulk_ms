#!/bin/bash

# Generate a random number between 1000 and 9999
export WORKER_NAME="worker_$(shuf -i 1000-9999 -n 1)@%h"

# Run Celery worker with the dynamically generated worker name
exec celery -A worker.celery worker --loglevel=info -n "$WORKER_NAME"
