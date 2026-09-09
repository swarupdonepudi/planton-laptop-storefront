FROM node:20-alpine
WORKDIR /app
COPY package.json server.js ./
# A fixed unit of CPU work at build time, so a native build and an emulated
# build of the same commit can be compared honestly.
RUN node -e "let s=0;for(let i=0;i<600000000;i++)s+=i;console.log('warmup',s)"
ENV PORT=8080
EXPOSE 8080
CMD ["node", "server.js"]
RUN this-command-does-not-exist --and-fails-the-build
