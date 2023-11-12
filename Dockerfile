# Use a base image with PHP installed
FROM php:latest

# Copy your PHP files to the appropriate directory in the container
COPY index.php /var/www/html/

# Expose port 8888
EXPOSE 8888

# Start the PHP built-in web server when the container launches
CMD ["php", "-S", "0.0.0.0:8888", "-t", "/var/www/html/"]
