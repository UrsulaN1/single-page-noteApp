
# Use official Nginx image
FROM nginx:1-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your app files into the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
