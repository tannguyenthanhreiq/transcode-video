# Installer stage
FROM node:12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 8080
ENV PORT 8080
ENV HOST 0.0.0.0

# Copy the entrypoint script and set it as the entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]