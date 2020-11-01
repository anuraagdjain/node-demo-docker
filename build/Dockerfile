FROM  node:14.15.0-alpine
LABEL author=@anuraagdjain

WORKDIR /usr/app

COPY package*.json ./
RUN npm i --only=production
COPY . .

RUN rm -rf scripts build

CMD ["node","index.js"]
