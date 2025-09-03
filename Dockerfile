FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN if [ -d "client" ]; then cd client && npm install && npm run build && cd ..; fi

EXPOSE 3000

CMD ["npm", "start"]

