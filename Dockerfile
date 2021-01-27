FROM node:14-alpine
WORKDIR /app
COPY . .
RUN npm install --production
RUN apk update
RUN apk add curl
CMD ["npm", "start", "&&", "echo", "lol", "&&", "curl", "0.0.0.0:8080", "&&", "echo", "mdr", "&&", "curl", "0.0.0.0:8040"]