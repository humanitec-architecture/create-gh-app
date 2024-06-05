FROM node:20-alpine

COPY index.js /app/index.js

WORKDIR /pwd

CMD [ "node", "/app/index.js" ]
