FROM node:20-alpine

COPY index.js /app/index.js

CMD [ "node", "/app/index.js" ]
