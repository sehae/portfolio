# backend/Dockerfile
FROM node:20-alpine

WORKDIR /app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Default command for development (you can override in docker-compose)
# CMD ["npm", "run", "dev"]
CMD ["sleep", "infinity"]