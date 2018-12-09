FROM node:8.12.0

RUN git clone -b 5-Microservice-in-Node-JS https://github.com/airavata-courses/NetBoox.git

WORKDIR /NetBoox/

RUN rm -rf node_modules package-lock.json

RUN npm install

EXPOSE 30001

CMD [ "npm", "start" ]
