# Installer stage
FROM node:14-alpine

WORKDIR /app

# Install system dependencies (ffmpeg)
RUN apk update && apk add --no-cache ffmpeg

# Copy package*.json files and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of the application files
COPY . .

# Expose the port and set environment variables
EXPOSE 8080
ENV PORT 8080
ENV HOST 0.0.0.0

# Run the application
CMD ["npm", "start"]