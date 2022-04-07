# # base image
FROM node:lts

WORKDIR /app

# copy source files
COPY . .
COPY package*.json ./
COPY prisma ./prisma/

RUN apt-get -qy update && apt-get -qy install openssl

# install dependencies
RUN npm install

RUN npm install @prisma/client

COPY . .
RUN npx prisma generate --schema ./prisma/schema.prisma
# start app
RUN npm run build
EXPOSE 8080
CMD npm run start
