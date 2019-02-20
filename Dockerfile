FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./

ENV foo "bar"

RUN echo ${foo}

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]