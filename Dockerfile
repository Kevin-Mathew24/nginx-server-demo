FROM nginx:alpine

# Copy custom configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]