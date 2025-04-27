FROM node:18

WORKDIR /srv/app

COPY package.json yarn.lock ./

RUN corepack enable && corepack prepare yarn@4.9.1 --activate

COPY . .

RUN rm -rf node_modules .yarn .pnp.* # <-- forcer clean dans l'image Docker
RUN yarn install

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]

