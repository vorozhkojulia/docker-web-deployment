# Docker Nginx Web Deployment

This repository contains a Docker configuration for deploying my website with Nginx.

## Project Structure

```
├── Dockerfile # Dockerfile to build the Docker image
├── nginx.conf # Custom Nginx configuration file
├── website/ # Directory containing the website files
│ ├── index.html 
│ ├── about.html 
│ ├── category.html 
│ ├── work.html 
│ ├── css/ 
│ ├── js/ 
│ └── images/ 
└── README.md # Project documentation
```

## Dockerfile Overview

The `Dockerfile` sets up an Nginx server to serve the static website. Here’s a breakdown of what it does:

- **Base Image:** Uses the `nginx:1.27-alpine` image as a lightweight base.
- **Nginx Configuration:** Copies a custom `nginx.conf` file to configure Nginx for serving the website.
- **Working Directory:** Sets the working directory to `/var/www/html/website`.
- **Copy Website Files:** Copies all files from the `website` directory on your local machine to the container.
- **Expose Port:** Exposes port `80` for HTTP traffic.
- **Start Nginx:** The `CMD` directive starts Nginx in the foreground to serve the site.

## Nginx Configuration

The `nginx.conf` file is a custom configuration for Nginx that:

- Listens on port 80 for incoming HTTP requests.
- Serves files from `/var/www/html/website`.
- Defines the default `index.html` as the entry point.

## How to Build and Run the Docker Container

Follow these steps to build and run the Docker container:

1. **Build the Docker Image:**

   ```bash
   docker build -t my-nginx-web-app .
   ```

## How to use

You can change the port mapping (3333) in the docker run command.

```
docker run -p 3333:80 my-nginx-web-app
```
## Access your website

Then access your website at http://localhost:3333.