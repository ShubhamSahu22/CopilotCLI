# Use the latest stable Nginx image
FROM nginx:stable

# Copy the HTML file to the default Nginx directory
COPY index.html /usr/share/nginx/html/

# Expose the default Nginx port
EXPOSE 80
