FROM node:alpine
WORKDIR app
COPY . .
RUN npm install --save express
RUN npm install
EXPOSE 3000
CMD ["node","myapp/index.js"]
