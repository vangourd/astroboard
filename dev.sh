#!/bin/bash

# Script to run either the frontend or backend of the Astroboard project

# Function to run backend
run_backend() {
    echo "Starting Backend..."
    cd backend/
    cargo build
    cargo watch -q
}

# Function to run frontend
run_frontend() {
    echo "Starting Frontend..."
    cd frontend/ 
    npm install
    nodemon -w src/ --exec npm run astro build
}

# Check for command line arguments
if [ "$1" == "--backend" ]; then
    run_backend
elif [ "$1" == "--frontend" ]; then
    run_frontend
else
    echo "Invalid argument. Please use --frontend or --backend."
fi
