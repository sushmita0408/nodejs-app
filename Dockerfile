FROM node:18
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY src/ ./src
EXPOSE 3000
CMD ["node", "src/app.js"]
