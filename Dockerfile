

FROM node

RUN apt update && apt install -y vim make

COPY node-hello/ /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]


