# Astroboard Project Setup

This guide details how to run the backend and frontend of the Astroboard project, optimized for environments like VSCode where tmux might interfere with port forwarding.

## Prerequisites

- Ensure you have `cargo` for Rust and `npm` for Node.js installed.

## Running the Backend

1. **Navigate to the Backend Directory:**
   Open a terminal or command line interface and navigate to the backend directory.

   ```
   cd backend/
   ```

2. **Build the Backend:**
   Use Cargo to build the backend components.

   ```
   cargo build
   ```

3. **Start Watching for Changes:**
   To automatically rebuild on changes, use `cargo watch`.

   ```
   cargo watch -q
   ```

## Running the Frontend

1. **Navigate to the Frontend Directory:**
   Open a new terminal or command line interface and navigate to the frontend directory.

   ```
   cd frontend/
   ```

2. **Install Dependencies:**
   Install the necessary npm packages.

   ```
   npm install
   ```

3. **Start the Frontend:**
   Use `nodemon` to watch for changes in the `src` directory and execute `npm run astro build`.

   ```
   nodemon -w src/ --exec npm run astro build
   ```
