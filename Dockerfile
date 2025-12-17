# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy the custom HTML file into the container's web directory
COPY index.html /usr/share/nginx/html/index.html

# Document that this container listens on Port 80
EXPOSE 80
