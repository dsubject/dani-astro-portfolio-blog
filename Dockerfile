# Stage 1: Build the Astro static site
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy source files and build Astro
COPY . .
RUN npm run build

# Stage 2: Serve the static files with NGINX
FROM nginx:alpine

# Copy the Astro build output to NGINX's HTML directory
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose the HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
