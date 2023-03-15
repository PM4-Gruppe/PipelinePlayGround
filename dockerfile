FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY .next ./.next
COPY public ./public

#COPY next.config.js ./next.condig.js

#COPY pages ./pages
#COPY public ./public
#COPY styles ./styles

CMD ["npm", "run", "start"]
