FROM node:14-alpine
WORKDIR /app
COPY . .
RUN npm install --production
RUN apk update
RUN apk add curl
CMD ["npm", "start"]