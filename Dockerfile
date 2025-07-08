FROM node:18-alpine

WORKDIR /usr/local/bin/n8n

COPY package.json .
RUN npm install --omit=dev

COPY . .

# Copy the workflow file directly into n8n's workflows directory
COPY n8n-workflows/meme-alerts.json /root/.n8n/workflows/meme-alerts.json

CMD ["npm", "start"]
