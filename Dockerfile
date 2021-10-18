FROM artifactory.service.anz:8118/node:9-slim 
WORKDIR /app
COPY package.json /app
COPY index.js /app
RUN npm config set proxy "http://gblproxyinch.service.anz:80"
RUN npm config set strict-ssl false 
RUN npm install 
EXPOSE 3000
CMD ["npm", "start"]