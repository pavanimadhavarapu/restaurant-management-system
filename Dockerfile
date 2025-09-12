FROM node:18-slim

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

# Build React/Node project for production
RUN npm run build

# Install serve to serve production build on port 80
RUN npm install -g serve
EXPOSE 80

# Serve production build
CMD ["serve", "-s", "build", "-l", "80"]

