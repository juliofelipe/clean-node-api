FROM node:16-alpine3.11

RUN apk add --no-cache bash git

RUN touch /home/node/.bashrc | echo "PS1='\w\$ '" >> /home/node/.bashrc

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm install -g nodemon

RUN mkdir -p /home/node/app

USER node

WORKDIR /home/node/app
