FROM node:12.22.1-buster-slim

ENV NODE_ENV=production

COPY ["package*.json", "/app/"]

WORKDIR /app

RUN npm install

COPY [".", "/app/"]

RUN npm run build

EXPOSE 1337

CMD bash -c "npm run start"