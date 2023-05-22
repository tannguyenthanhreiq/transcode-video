# Installer stage
FROM node:16-alpine

WORKDIR /app

# Override the default entrypoint
ENTRYPOINT []

# Copy package*.json files and install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy the rest of the application files
COPY . .

# Expose the port and set environment variables
EXPOSE 8080
ENV PORT 8080
ENV HOST 0.0.0.0

# Run the application
CMD ["npm", "start"]