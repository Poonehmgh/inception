# Use the Alpine 3.17 base image
FROM alpine:3.17

# Install Nginx
RUN apk update && apk add nginx

# Copy the Nginx configuration file
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copy the SSL certificate and private key files
COPY conf/certs/cert.pem /etc/nginx/cert.pem
COPY conf/certs/privkey.pem /etc/nginx/privkey.pem

# Copy the HTML file
COPY index.html /usr/share/nginx/html/index.html

# Expose port 443 for HTTPS
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
