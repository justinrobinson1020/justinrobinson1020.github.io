FROM node:10-alpine
EXPOSE 8080

RUN mkdir -p /home/webpage/ && chown -R node:node /home/webpage

WORKDIR /home/webpage/

COPY ["*.json", "/home/webpage/"]

USER node

RUN npm install

COPY --chown=node:node . .

CMD ["node", "app.js"]

#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file
#there should be a total of 9 lines
