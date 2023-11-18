# Stage 1: Build the Rust app
FROM rust:1.74 as rust-builder
WORKDIR /usr/src/backend
COPY ./backend /usr/src/backend
RUN cargo build --release

# Stage 2: Build the NodeJS app
FROM node:18.14.1 as node-builder
WORKDIR /usr/src/frontend
COPY ./frontend /usr/src/frontend
RUN npm install --production
RUN npm run astro build

# Stage 3: Final stage
FROM alpine:latest

# Copy the Rust binary
COPY --from=rust-builder /usr/src/backend/target/release/my-rust-app /usr/local/bin/

# Copy the NodeJS app
COPY --from=node-builder /usr/src/frontend /frontend
WORKDIR /frontend

# Expose any ports your apps need
EXPOSE 8080

# Define your runtime command
# Here, we are starting the Node app. Adjust if you need to start the Rust app instead.
CMD ["node", "index.js"]
