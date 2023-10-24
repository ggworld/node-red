# the mission to take first docker and add all actions from 2nd docker so we have both capabilities 
#base Docker 

# Use the official Node.js runtime on Bullseye as a parent image
FROM python:3.8.11-bullseye
RUN pip install awswrangler
RUN pip install awswrangler[opensearch]
RUN pip install openai
RUN ln -sf python3 /usr/bin/python

# Install curl, dirmngr, and gnupg to enable adding the Node.js PPA
RUN apt-get update && \
    apt-get install -y curl dirmngr gnupg && \
    rm -rf /var/lib/apt/lists/*

# Add the Node.js PPA
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

# Install Node.js and npm
RUN apt-get install -y nodejs



# Set the working directory to /app
WORKDIR /app

COPY . .


USER root
# Copy package.json and package-lock.json to the working directory

# Install Node-RED and its dependencies
RUN npm install -g --unsafe-perm node-red
RUN npm install -g node-red-dashboard 
RUN npm install -g node-red-contrib-ui-svg
RUN npm install -g node-red-contrib-ui-upload 
RUN npm install -g node-red-contrib-spreadsheet-in
RUN npm install -g node-red-contrib-chunks-to-lines
RUN npm install -g node-red-node-mysql
RUN npm install -g node-red-contrib-spreadsheet-in
RUN npm install -g node-red-node-ui-table
RUN npm install -g node-red-contrib-python-function
# Expose port 1880 for Node-RED

# Set the default command to start Node-RED
EXPOSE 1880
CMD ["node-red"]

# add this:
FROM node:latest
FROM nodered/node-red
RUN npm install twilio
RUN npm install node-red-contrib-salesforce
ENV TWILIO_ACCOUNT_SID=*******
ENV TWILIO_AUTH_TOKEN=****
ENV TPHONE=****
ENV SFTest_ConsumerKey=****
ENV SFTest_ConsumerSecret=***
ENV SFTest_UserName=me.geva@gmail.com
ENV SFTest_PassWord=*****
COPY settings.js /data/settings.js
