# Astroboard Project Setup

This guide details how to run the frontend of the Astroboard project using a shell script. The backend should be run separately in a shell to ensure compatibility with VSCode's features like port forwarding.

## Prerequisites

- Ensure you have `npm` for Node.js installed.
- The backend requires Rust's `cargo`, but it should be run directly in the shell.

## Using the Shell Script for the Frontend

1. **Save the Shell Script:**
   Save the provided shell script in the root directory of your project. You might name it `run_astroboard.sh`.

2. **Make the Script Executable:**
   Change the script's permissions to make it executable.

   ```bash
   chmod +x run_astroboard.sh
   ```

3. **Run the Frontend:**
   Execute the script with the `--frontend` flag to start the frontend part of the project.

   ```bash
   ./run_astroboard.sh --frontend
   ```

## Running the Backend Separately

Due to compatibility issues with VSCode, the backend should be run directly in the shell. This ensures that features like port forwarding work correctly.

- Navigate to the backend directory and use `cargo run`:

  ```bash
  cd backend/
  cargo run
  ```
