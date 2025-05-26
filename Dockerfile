FROM node:apline 
#which is the base image
WORKDIR /app

COPY package*.json package-lock.json /app/

RUN npm install --production

COPY . /app/

EXPOSE 3000

CMD ["nmp", "start"]

