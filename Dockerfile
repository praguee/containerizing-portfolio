# Use an official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 8070
EXPOSE 8070

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

