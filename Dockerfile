FROM node:18-slim

WORKDIR /app

COPY package*.json first for caching

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

