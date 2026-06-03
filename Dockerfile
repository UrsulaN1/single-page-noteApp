
# Most secure official NGINX image with a shell
FROM nginx:stable-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

RUN apk update && apk upgrade --no-cache

# Copy your app files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]



