FROM node:22-alpine AS dependencies

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev


FROM node:22-alpine AS production

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000

RUN addgroup -S nodeapp && adduser -S nodeapp -G nodeapp

COPY --from=dependencies /app/node_modules ./node_modules
COPY src ./src
COPY package*.json ./

RUN chown -R nodeapp:nodeapp /app

USER nodeapp

EXPOSE 3000

CMD ["node", "src/server.js"]