FROM node:15-alpine

COPY ./package*.json /root/app/

WORKDIR /root/app/

RUN npm install

COPY . ./

CMD [ "sh", "-c", "npm run start:prod" ]
