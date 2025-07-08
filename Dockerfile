FROM node:18-alpine

WORKDIR /usr/local/bin/n8n

COPY package.json .
RUN npm install --omit=dev

COPY . .

CMD ["npm", "start"]
