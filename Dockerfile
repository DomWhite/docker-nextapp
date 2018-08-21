#FROM node:alpine
#WORKDIR /app
#COPY . .

#RUN yarn install
#RUN yarn build

#CMD ["yarn", "start"]
#EXPOSE 3000

FROM node:boron
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]