FROM node:22

  WORKDIR /app

  # Install dependencies first (cached layer)
  COPY package.json ./
  RUN npm install --omit=dev --legacy-peer-deps

  # Copy pre-built JS files to app root
  COPY index.mjs ./
  COPY pino-file.mjs ./
  COPY pino-pretty.mjs ./
  COPY pino-worker.mjs ./
  COPY thread-stream-worker.mjs ./

  ENV NODE_ENV=production
  ENV PORT=8080

  EXPOSE 8080

  CMD ["node", "--enable-source-maps", "./index.mjs"]
  