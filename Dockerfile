FROM nginx:alpine

# Remove default config and copy yours
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

# Copy your index.html
COPY index.html /usr/share/nginx/html/index.html

# No need to EXPOSE 80 for Cloud Run
# EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]