# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm install`

`npm start`
1. Create Docker file
FROM artifactory.service.anz:8118/node:9-slim //Artificatory - running on 8118 is replicas of Docker-Hub
WORKDIR /app
COPY package.json /app
COPY index.js /app
RUN npm config set proxy "http://gblproxyinch.service.anz:80"// To set proxy
RUN npm config set strict-ssl false // Disable SSL Checks
RUN npm install // To install package required
COPY . /app
EXPOSE 3000
CMD ["npm", "start"]

2. Create docker image with below command
docker build -t sampleapp .

3. Run container out of image created.
docker run -it -p 9000:3000 sampleapp // This will run the container on foreground.

4. To check running containerdocker 
docker ps
