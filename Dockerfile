# syntax=docker/dockerfile:1

FROM rook/ceph:v1.21.0
ENV NODE_ENV=production

WORKDIR /app


RUN npm install --production

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
