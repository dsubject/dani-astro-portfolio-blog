# Use NGINX to serve static files
FROM nginx:alpine

# Copy pre-built static files from the GitHub Actions build step
COPY dist/ /usr/share/nginx/html

# Expose the HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
