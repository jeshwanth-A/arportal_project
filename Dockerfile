# Use the official Nginx image as a base image
FROM nginx:alpine

# Remove the default Nginx index page
RUN rm /usr/share/nginx/html/*

# Copy our custom index.html to the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]