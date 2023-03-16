#--- Select target os ---
FROM node:16-alpine

#--- Setup Work directory ---
WORKDIR /app

#--- Copy dependencies ---
COPY package.json package-lock.json ./

#--- Install dependencies
RUN npm install

#--- For Production ---
COPY .next ./.next
COPY public ./public


#--- For Development ---
#COPY next.config.js ./next.condig.js

#COPY pages ./pages
#COPY public ./public
#COPY styles ./styles

#--- Commands ---
CMD ["npm", "run", "start"]
