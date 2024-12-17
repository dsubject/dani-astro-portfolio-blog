# Base image: Use NGINX to serve static files
FROM nginx:alpine

# Copy Astro's static output to NGINX's HTML directory
COPY dist/ /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]