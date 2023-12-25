FROM node:bullseye-slim

WORKDIR /app
ENV TZ="Asia/Shanghai" \
  NODE_ENV="production"

COPY . /app/
 
EXPOSE 3000


RUN chmod 777 package.json index.js  /app &&\
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  npm install


CMD ["node", "index.js"]
