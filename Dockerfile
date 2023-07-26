FROM node:18.0-slim

RUN npm install -g pnpm

WORKDIR "/home/node/app"

COPY ["package.json", "pnpm-lock.yaml", "tsconfig.json" ,"./"]

RUN pnpm install

USER node

CMD ["sh", "-c", "tail -f /dev/null"]