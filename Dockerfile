FROM node:carbon-alpine

# Create app directory
WORKDIR /usr/src/app

# INSTALL Gitbook-cli
RUN npm install gitbook-cli -g

# Bundle app source
COPY . .

# Use -p to bind to specific host port
EXPOSE 4000
CMD [ "gitbook", "serve", "--no-live", "--no-watch"]

