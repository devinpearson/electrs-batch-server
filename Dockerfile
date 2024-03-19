# Fetching the minified node image on alpine linux
FROM node:slim

# Declaring env
ENV NODE_ENV development
ENV PORT 50003
ENV CONCURRENCY 10
# Setting up the work directory
WORKDIR /dist

# Copying all the files in our project
COPY . .

# Installing dependencies
RUN npm install

# Starting our application
CMD [ "node", "index.js" ]

# Exposing server port
EXPOSE 50003