#--- Select target os ---
FROM node:18-alpine

#--- Setup Work directory ---
WORKDIR /app

#--- Copy dependencies ---
COPY package.json package-lock.json ./

#--- Install dependencies
RUN npm install

#--- For Production ---
COPY .next ./.next
COPY public ./public
COPY .env .

#ARG VAR1
#ARG VAR2
#
#ENV VAR1=$VAR1 \
#    VAR2=$VAR2
#
#RUN touch /app/.env && printenv > /app/.env



#--- For Development ---
#COPY next.config.js ./next.condig.js

#COPY pages ./pages
#COPY public ./public
#COPY styles ./styles

#--- Commands ---
CMD ["npm", "run", "start"]
