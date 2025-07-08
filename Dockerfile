FROM n8nio/n8n

WORKDIR /usr/local/bin/n8n

COPY package.json .
RUN npm install --omit=dev

COPY . .

CMD ["n8n", "start"]


