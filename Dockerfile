FROM node:18.16

RUN apt-get update && \
    apt-get install -y

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

ENTRYPOINT [ "npm","run","start" ]


