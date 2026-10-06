# Node.js Docker Optimized Application

## Project Overview

This project demonstrates how to containerize a Node.js application using Docker and optimize the Docker image for production use.

The application is built with Node.js and Express and includes a health-check endpoint.

## Technologies Used

- Node.js
- Express.js
- Docker
- Docker Alpine
- Multi-stage Docker build

## Project Structure

```text
nodejs-docker-optimized/
├── src/
│   └── server.js
├── package.json
├── package-lock.json
├── Dockerfile
├── .dockerignore
└── README.md