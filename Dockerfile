FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.y4qhc2l.mongodb.net
ENV MONGODB_USERNAME yannickcoolen1991
ENV MONGODB_PASSWORD aGCJ4k6NAes8z45j

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]